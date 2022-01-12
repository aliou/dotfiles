#include QMK_KEYBOARD_H

enum layers {
  _BL = 0, // Base layer
  _FL = 1, // Function layer
};

// Will use LK as a prefix for custom keycodes.
enum alt_keycodes {
  LK_DFU = SAFE_RANGE
};

#define CTL_ESC  LCTL_T(KC_ESC)    // Tap for ESC, hold for CTRL.
#define CMD_COM  CMD_T(KC_COMM)    // Emulate cmd + , to open preferences.
#define CMD_BPC  CMD_T(KC_BSPC)    // Emulate cmd + backspace
#define SHT_SLH  RSFT_T(KC_SLSH)   // Tap for right SHIFT, hold for Slash.

const uint16_t PROGMEM keymaps[][MATRIX_ROWS][MATRIX_COLS] = {
    [_BL] = LAYOUT(
        KC_GRAVE, KC_1,    KC_2,    KC_3,    KC_4,    KC_5,  KC_6,    KC_7,    KC_8,     KC_9,    KC_0,    KC_MINS, KC_EQL,  KC_BSPC,
        KC_TAB,   KC_Q,    KC_W,    KC_E,    KC_R,    KC_T,  KC_Y,    KC_U,    KC_I,     KC_O,    KC_P,    KC_LBRC, KC_RBRC, KC_BSLS,
        CTL_ESC,  KC_A,    KC_S,    KC_D,    KC_F,    KC_G,  KC_H,    KC_J,    KC_K,     KC_L,    KC_SCLN, KC_QUOT,          KC_ENT,
        KC_LSFT,           KC_Z,    KC_X,    KC_C,    KC_V,  KC_B,    KC_N,    KC_M,     KC_COMM, KC_DOT,  SHT_SLH, KC_UP,   KC_DEL,
        KC_LCTL,  KC_LALT, KC_LGUI,                          KC_SPC,                     KC_RGUI, MO(_FL), KC_LEFT, KC_DOWN, KC_RGHT
    ),
    [_FL] = LAYOUT(
        _______, KC_F1,   KC_F2,   KC_F3,   KC_F4,   KC_F5,   KC_F6,   KC_F7,   KC_F8,   KC_F9,   KC_F10,  KC_F11,  KC_F12,  CMD_BPC,
        _______, _______, KC_UP,   _______, _______, _______, _______, _______, KC_INS,  _______, _______, _______, KC_PAUS, _______,
        _______, KC_LEFT, KC_DOWN, KC_RGHT, _______, _______, _______, _______, _______, _______, KC_HOME, KC_PGUP,          EEP_RST,
        _______,          _______, _______, _______, _______, LK_DFU,  NK_TOGG, _______, _______, KC_END,  KC_PGDN, KC_VOLU, KC_MUTE,
        _______, _______, _______,                            _______,                   _______, _______, KC_MPRV, KC_VOLD, KC_MNXT

    ),
    /*
    [_LAYER] = LAYOUT(
        13,      12,      11,       10,      9,       8,       7,       6,       5,       4,       3,       2,       1,       0,      \
        27,      26,      25,       24,      23,      22,      21,      20,      19,      18,      17,      16,      15,      14,     \
        40,      39,      38,       37,      36,      35,      34,      33,      32,      31,      30,      29,      28,              \
        53,      52,      51,       50,      49,      48,      47,      46,      45,      44,      43,               42,      41,     \
        62,      61,      60,                         59,                        58,      57,               56,      55,      54      \
      ),
    */
};

void rgb_matrix_indicators_user(void)
{
    // Turn off all leds.
    // TODO: Find a way to have the board do this by default?
    rgb_matrix_set_color_all(0x00, 0x00, 0x00);

    // Led colors depending on current layer.
    switch (biton32(layer_state)) {
        case _BL:
            rgb_matrix_set_color(13, RGB_GREEN);
            break;
        case _FL:
            rgb_matrix_set_color(13, RGB_RED);
            rgb_matrix_set_color(48, RGB_RED); // Highlight key to go to DFU mode.
            break;
    }
}

uint8_t mod_state;
bool process_record_user(uint16_t keycode, keyrecord_t *record)
{
  static uint32_t key_timer;
  static bool keycode_registered;

  mod_state = get_mods();

  switch (keycode) {
    // Put keyboard in DFU mode when pression the combinaison for more than 500ms.
    case LK_DFU:
      if (record->event.pressed) {
        key_timer = timer_read32();
      } else {
        if (timer_elapsed32(key_timer) >= 500) {
          reset_keyboard();
        }
      }
      return false;

    // In the next few cases, something crazy is going on.
    // To learn to use more the left shift key, from now on, I'll completely ignore the right shift key
    // if it's used with harder to reach keys.
    case KC_LBRC:
    case KC_RBRC:
    case KC_BSLS:
    case KC_COMM:
    case KC_DOT:
      // Initialize a boolean variable that keeps track
      // of the pressed key status: registered or not?
      if (record->event.pressed) {
        // Detect the activation of the right shift key.
        if ((get_mods() & MOD_BIT(KC_RSFT)) == MOD_BIT(KC_RSFT)) {
          // First temporarily canceling the right shift key so that
          // shift isn't applied to the pressed key.
          del_mods(KC_RSFT);

          // Then register the key pressed.
          register_code(keycode);

          // Update the boolean variable to reflect the status of the keycode.
          keycode_registered = true;

          // Reapplying modifier state so that the held shift key(s)
          // still work even after having tapped the pressed key.
          set_mods(mod_state);

          // Tell qmk that we've handled the key.
          return false;
        }
      } else { // on release of the key.
        // In case the key code is still being sent even after the release its key.
        if (keycode_registered) {
          unregister_code(keycode);
          keycode_registered = false;
          return false;
        }
      }
      return true;
      // Process all other keycodes normally.

    default:
      return true;
  }
}

// vim:foldmethod=syntax tw=0
