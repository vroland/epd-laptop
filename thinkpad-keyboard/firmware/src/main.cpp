#include <Arduino.h>
#include <stdint.h>
#include <SPI.h>
#include <math.h>
#include "TrackPoint.h"

#include "keys.h"

#define NUM_DRIVE 16

static uint8_t keystate[16] = {0, 0, 0, 0, 0, 0, 0, 0,
                               0, 0, 0, 0, 0, 0, 0, 0};

const int DRIVE_PINS[NUM_DRIVE] = {23, 22, 21, 20, 19, 18, 17, 16, 15, 14, 13, 12, 11, 10, 3, 2};

#define TP_CLOCK 0
#define TP_RESET 1
#define TP_DATA 8

#define HOTKEY 9

TrackPoint trackpoint(TP_CLOCK, TP_DATA, TP_RESET, true);

uint8_t scan(void);

void spi_send(uint8_t* buf, int length) {
    SPI.beginTransaction(SPISettings(8000000, MSBFIRST, SPI_MODE3));
    digitalWrite(SS, LOW); // enable Slave Select
    // send test string
    for (int i=0; i < length; i++)
    {
      SPI.transfer (buf[i]);
    }
    digitalWrite(SS, HIGH); // disable Slave Select
    SPI.endTransaction();
}

volatile static TPEvent report;
volatile static int report_new = 0;

ISR(USART_RXC_vect)
{
    static TrackPoint::DataReport wip_report = {
        .state = 0b00001000,
        .x = 0,
        .y = 0,
    };
    static uint8_t bytes_received = 0;
    ((uint8_t*)&wip_report)[bytes_received++] = UDR;

    if (bytes_received == sizeof(wip_report)) {
        *((uint8_t*)&report.state) = wip_report.state;
        report.x = wip_report.x;
        report.y = wip_report.y;
        bytes_received = 0;
        report_new = 1;
    }
}

void setup (void) {
    digitalWrite(SS, HIGH); // disable Slave Select
    SPI.begin ();
    DDRA = 0x0; // Port A as input
    PORTA = 0xFF; // Activate Pull-Up

    for (int i=0; i < NUM_DRIVE; i++) {
        pinMode(DRIVE_PINS[i], INPUT);
    }

    pinMode(HOTKEY, INPUT_PULLUP);

    trackpoint.reset();
	trackpoint.setSensitivityFactor(0xC0);
	trackpoint.setStreamMode();

    // Clock must be INPUT to enable USART slave mode
    pinMode(TP_CLOCK, INPUT);

    // Enable synchronous serial
    UCSRB = (1<<RXEN) | (1<<RXCIE);

    // Synchronous mode, odd parity, 8 data, 1 stop bit
    UCSRC = (1<<URSEL) | (1<<UMSEL) | (1<<UPM1) | (1<<UPM0) |  (1<<UCSZ1) | (1<<UCSZ0);
}

inline uint8_t scan_line(int l) {
    pinMode(DRIVE_PINS[l], OUTPUT);
    digitalWrite(DRIVE_PINS[l], LOW);
    uint8_t value = PINA;
    pinMode(DRIVE_PINS[l], INPUT);
    return value;
}

uint8_t scan() {
    uint8_t event = 0xFF;
    for (int line = 0; line < NUM_DRIVE; line++) {
        uint8_t result = scan_line(line);
        uint8_t newly_active = (~keystate[line]) & (~result);
        uint8_t newly_inactive = keystate[line] & result;

        if (newly_inactive) {
            // more than one key set / unset at a time (newly_active is not a
            // power of 2 or 0) is considered ghosting
            if ((newly_inactive & (newly_inactive - 1)) == 0) {
                if (event == 0xFF) {
                    keystate[line] ^= newly_inactive;
                    event = (line * 8 + (sizeof(unsigned int) * 8 - __builtin_clz((unsigned int)newly_inactive) - 1));
                } else {
                    // ghosting occured
                    event = 0xFF;
                    break;
                }
            };
        }

        if (newly_active) {
            // more than one key set / unset at a time (newly_active is not a
            // power of 2 or 0) is considered ghosting
            if ((newly_active & (newly_active - 1)) == 0) {
                if (event == 0xFF) {
                    keystate[line] ^= newly_active;
                    event = (line * 8 + (sizeof(unsigned int) * 8 - __builtin_clz((unsigned int)newly_active) - 1)) | 0x80;
                } else {
                    // ghosting occured
                    event = 0xFF;
                    break;
                }
            };
        }
    }
    if (event != 0xFF) {
        return event;
    // query HOTKEY
    } else {
        uint8_t pressed = !digitalRead(HOTKEY);
        static int hotkey_state = 0;
        if (pressed && !hotkey_state) {
            event = 126 | 0x80;
            hotkey_state = 1;
        } else if (!pressed && hotkey_state) {
            event = 126;
            hotkey_state = 0;
        }
    }
    return event;
}

void loop (void) {
    uint8_t event = scan();

    if (report_new) {
        uint8_t buf[4];
        buf[0] = EventKind::TRACKPOINT_EVENT;
        memcpy(buf + 1, &report, 3);
        spi_send(buf, sizeof(buf));
        report_new = 0;
    }

    if (event != 0xFF) {
        uint8_t buf[2] = {EventKind::KEYBOARD_EVENT, event};
        spi_send(buf, sizeof(buf));
    }
}
