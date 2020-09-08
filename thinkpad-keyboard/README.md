Keyboard Controller for Thinkpad Keyboards
==========================================

Ever wanted to use an old thinkpad keyboard with an embedded project? This board might be for you!
These keyboards are quite readily available used from ebay and have a nice feel for a laptop keyboard.
This makes them great for embedded projects where you want a keyboard you can *actually* type on.

Compatible Keyboards:

 * Old thinkpad keyboards with a 44 pin connector, like the x60, x61, x220 and probably others.
 
Features
--------

 * Get button press events via SPI
 * Get Trackpoint events via SPI
 * High scan frequency
 * Low power consumption
 * Although the TrackPoint nominally uses 5V, according to my tests the board runs fine on 3.3V.
   This allows to talk directly to a 3.3V-based microcontroller like the ESP32.

Getting Started
---------------

Although the firmware is based on the arduino firmware, the Atmega32 does not usually come with the Arduino bootloader flashed.
Thus, you need an AVR ISP-Compatible programmer.

1. Prerequisites: Install platformio
2. Compile the firmware: `pio run -t build`
3. Burn the fuses to use the external oscillator: `pio run -t fuses`
4. Upload: `pio run -t upload`
5. Enjoy!

Future
------

 * Currently, the 40-pin connector of the keyboard is broken out on the PCB, mainly for debug puropses.
   For a second revision, this would not be needed.
 
FAQ
---

* Q: Where do I get the receptable for this strange connector?
  A: The AA01B-S040VA1 is available on AliExpress.


References
----------

* https://www.instructables.com/id/Make-a-ThinkPad-keyboard-USB-adapter-with-Arduino/
* https://github.com/rampadc/arduino-trackpoint-extended
* https://hackaday.com/2018/12/04/teensy-liberates-the-thinkpad-keyboard/
* https://larsee.com/blog/2018/06/thinkpad-usb-keyboard-adapter/

Licenses
--------

Case drawings, the keyboard pcband schematic are licensed under a <a rel="license" href="http://creativecommons.org/licenses/by/4.0/"><img alt="Creative Commons License" style="border-width:0" src="https://i.creativecommons.org/l/by/4.0/80x15.png" /></a> <a rel="license" href="http://creativecommons.org/licenses/by/4.0/">Creative Commons Attribution 4.0 International License</a>.

Firmware and utilities are licensed unter the terms of the MIT license.
