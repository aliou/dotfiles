#include QMK_KEYBOARD_H

enum layer_names {
  _BASE = 0,
  _FN1,
  _FN2
};

// Prefix custom keycodes by `MN` to prevent colisions.
enum alt_keycodes {
  MN_DFU = SAFE_RANGE
};

// Tap for ESC, hold for CTRL.
#define CTL_ESC  LCTL_T(KC_ESC)

const uint16_t PROGMEM keymaps[][MATRIX_ROWS][MATRIX_COLS] = {
    [_BASE] = LAYOUT_60_ansi(
        KC_GRAVE, KC_1,    KC_2,    KC_3,    KC_4,    KC_5,    KC_6,    KC_7,    KC_8,    KC_9,    KC_0,     KC_MINS, KC_EQL,  KC_BSPC,
        KC_TAB,   KC_Q,    KC_W,    KC_E,    KC_R,    KC_T,    KC_Y,    KC_U,    KC_I,    KC_O,    KC_P,     KC_LBRC, KC_RBRC, KC_BSLS,
        CTL_ESC,  KC_A,    KC_S,    KC_D,    KC_F,    KC_G,    KC_H,    KC_J,    KC_K,    KC_L,    KC_SCLN,  KC_QUOT,          KC_ENT,
        KC_LSFT,  KC_Z,    KC_X,    KC_C,    KC_V,    KC_B,    KC_N,    KC_M,    KC_COMM, KC_DOT,  KC_SLSH,           KC_RSFT,
        KC_LCTL,  KC_LALT, KC_LGUI,                            KC_SPC,                             MO(_FN1), KC_RGUI, KC_RALT, KC_RCTL
    ),
    [_FN1] = LAYOUT_60_ansi(
        _______, KC_F1,   KC_F2,   KC_F3,   KC_F4,   KC_F5,   KC_F6,   KC_F7,   KC_F8,   KC_F9,   KC_F10,  KC_VOLD, KC_VOLU, KC_DEL,
        _______, _______, KC_UP,   _______, _______, _______, _______, _______, _______, _______, _______, KC_F14,  KC_F15,  _______,
        _______, KC_LEFT, KC_DOWN, KC_RGHT, _______, _______, _______, _______, _______, _______, KC_MPRV, KC_MNXT,          _______,
        _______,          _______, _______, _______, _______, MN_DFU,  _______, _______, _______, _______, _______,          KC_UP,
        _______, _______, _______,                            _______,                            _______, KC_LEFT, KC_DOWN, KC_RGHT
    ),
};

bool process_record_user(uint16_t keycode, keyrecord_t *record) {
  static uint32_t key_timer;

  switch (keycode) {
    // Put keyboard in DFU mode when pressing the combination for more than 500ms.
    case MN_DFU:
      if (record->event.pressed) {
        key_timer = timer_read32();
      } else {
        if (timer_elapsed32(key_timer) >= 500) {
          reset_keyboard();
        }
      }
      return false;

    // Process all other keycodes normally.
    default:
      return true;
  }
}

bool rgb_matrix_indicators_user(void)
{
    // Turn off all leds.
    // TODO: Find a way to have the board do this by default?
    rgb_matrix_set_color_all(0x00, 0x00, 0x00);

    // Led colors depending on current layer.
    switch (biton32(layer_state)) {
        case _BASE:
            rgb_matrix_set_color(13, RGB_BLUE);
            break;
        case _FN1:
            rgb_matrix_set_color(13, RGB_RED);
            rgb_matrix_set_color(47, RGB_RED); // Highlight key to go to DFU mode.

            // rgb_matrix_set_color(41, RGB_GREEN);
            // rgb_matrix_set_color(53, RGB_GREEN);
            // rgb_matrix_set_color(54, RGB_GREEN);
            // rgb_matrix_set_color(55, RGB_GREEN);
            break;
    }

    return false;
}

// vim:foldmethod=syntax tw=0 shiftwidth=2
