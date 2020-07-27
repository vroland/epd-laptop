#pragma once

#include <stdint.h>
#include <assert.h>
#include <stdbool.h>

typedef enum {
    ESC = 84,
    MUTE = 59,
    VOL_DOWN = 62,
    VOL_UP = 63,
    F1 = 69,
    F2 = 53,
    F3 = 54,
    F4 = 52,
    F5 = 20,
    F6 = 12,
    F7 = 30,
    F8 = 29,
    F9 = 21,
    F10 = 18,
    F11 = 58,
    F12 = 74,

    PRINT = 114,
    ROLL = 119,
    PAUSE = 105,
    INSERT = 77,
    DELETE = 61,
    POS1 = 109,
    END = 106,
    PG_UP = 93,
    PG_DOWN = 90,

    CARRET = 85,
    NUM_1 = 82,
    NUM_2 = 66,
    NUM_3 = 50,
    NUM_4 = 34,
    NUM_5 = 37,
    NUM_6 = 5,
    NUM_7 = 2,
    NUM_8 = 10,
    NUM_9 = 26,
    NUM_0 = 42,

    QESTION_MARK = 45,
    BACKTICK = 13,
    BACKSPACE = 22,
    ENTER = 17,
    CAPS = 70,
    SHIFT_LEFT = 102,
    SHIFT_RIGHT = 97,
    CTRL_LEFT = 125,
    MOD_LEFT = 95,
    ALT_LEFT = 116,
    SPACE = 16,
    ALT_RIGHT = 112,
    MENU = 91,
    CTRL_RIGHT = 121,
    PAGE_LEFT = 89,
    PAGE_GR = 88,
    THINKPAD = 60,
    HOTKEY = 126,

    UP = 108,
    DOWN = 56,
    LEFT = 104,
    RIGHT = 72,

    TAB = 86,
    Q = 87,
    W = 71,
    E = 55,
    R = 39,
    T = 38,
    Z = 6,
    U = 7,
    I = 15,
    O = 31,
    P = 47,
    UE = 46,
    PLUS = 14,

    A = 83,
    S = 67,
    D = 51,
    F = 35,
    G = 36,
    H = 4,
    J = 3,
    K = 11,
    L = 27,
    OE = 43,
    AE = 44,
    NUMBER_SIGN = 41,

    LT = 68,
    Y = 81,
    X = 65,
    C = 49,
    V = 33,
    B = 32,
    N = 0,
    M = 1,
    COMMA = 9,
    DOT = 25,
    HYPHEN = 40
} KeyboardKeys;

typedef struct {
    KeyboardKeys key : 7;
    bool state : 1;
}__attribute__((packed)) KeyEvent;

typedef struct {
    struct TPState {
        bool left_depressed : 1;
        bool right_depressed : 1;
        bool middle_depressed : 1;
        bool source_tag : 1;
        bool x_sign : 1;
        bool y_sign : 1;
        bool x_overflow : 1;
        bool y_overflow : 1;
    }__attribute__((packed)) state;
    int8_t x;
    int8_t y;
}__attribute__((packed)) TPEvent;

typedef enum {
    KEYBOARD_EVENT = 0,
    TRACKPOINT_EVENT = 1,
} EventKind;
