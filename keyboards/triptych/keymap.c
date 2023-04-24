#include QMK_KEYBOARD_H

enum layers {
    _NIL = 0,
    _ONE = 1,
    _TWO = 2,
    _THR = 3,

    _DEBUG = 4 // TODO: Debug layer that allows going into DFU mode to flash.
};

enum custom_keycodes {
    T3_DFU = SAFE_RANGE,
};

#define DISABLED XXXXXXX

#define CMD_BU  CMD_T(KC_PAUS)

const uint16_t PROGMEM keymaps[][MATRIX_ROWS][MATRIX_COLS] = {
    [_NIL] = LAYOUT(MO(_ONE), MO(_TWO), MO(_THR)),

    [_ONE] = LAYOUT(DISABLED, KC_F14,   KC_F15),
    [_TWO] = LAYOUT(KC_F16,   DISABLED, KC_F17),
    [_THR] = LAYOUT(T3_DFU,   KC_F18,   DISABLED),

    [_DEBUG] = LAYOUT(T3_DFU, _______, _______)
};

const rgblight_segment_t PROGMEM layer_indicator_0[] = RGBLIGHT_LAYER_SEGMENTS(
    {0, 5, HSV_OFF}
);

const rgblight_segment_t PROGMEM layer_indicator_1[] = RGBLIGHT_LAYER_SEGMENTS(
    {0, 1, HSV_OFF},
    {1, 1, HSV_WHITE},
    {2, 3, HSV_OFF}
);

const rgblight_segment_t PROGMEM layer_indicator_2[] = RGBLIGHT_LAYER_SEGMENTS(
    {0, 2, HSV_OFF},
    {2, 1, HSV_WHITE},
    {3, 2, HSV_OFF}
);

const rgblight_segment_t PROGMEM layer_indicator_3[] = RGBLIGHT_LAYER_SEGMENTS(
    {0, 3, HSV_OFF},
    {3, 1, HSV_RED},
    {4, 1, HSV_OFF}
);

const rgblight_segment_t PROGMEM layer_indicator_4[] = RGBLIGHT_LAYER_SEGMENTS(
    {0, 5, HSV_RED}
);

const rgblight_segment_t* const PROGMEM rgb_layers[] = RGBLIGHT_LAYERS_LIST(
    layer_indicator_0,
    layer_indicator_1,
    layer_indicator_2,
    layer_indicator_3,
    layer_indicator_4
);

void keyboard_post_init_user(void) {
    rgblight_layers = rgb_layers;
}

layer_state_t default_layer_state_set_user(layer_state_t state) {
    rgblight_set_layer_state(0, true);

    return state;
}

layer_state_t layer_state_set_user(layer_state_t state) {
    rgblight_set_layer_state(1, layer_state_cmp(state, _ONE));
    rgblight_set_layer_state(2, layer_state_cmp(state, _TWO));
    rgblight_set_layer_state(3, layer_state_cmp(state, _THR));
    rgblight_set_layer_state(4, layer_state_cmp(state, _DEBUG));

    return state;
}

bool process_record_user(uint16_t keycode, keyrecord_t *record) {
    static uint32_t key_timer;

    switch (keycode) {
        case T3_DFU:
            if (record->event.pressed) {
                key_timer = timer_read32();
            } else {
                if (timer_elapsed32(key_timer) >= 500) {
                    reset_keyboard();
                }
            }
            return false;
        default:
            break;
    }
    return true;
}
