# qmk configurations for my keyboards.

## Compiling firmwares
* [Setup `qmk` locally](https://docs.qmk.fm/#/newbs_getting_started)
* Link (`ln`) each keymaps to the corresponding keyboard keymap in the qmk directory.
* Compile the firmware with `qmk compile -kb [KEYBOARD] -km [KEYMAP]`

### [`cstm`](./cstm)
Case: [Drop Alt High Profile][] from [Drop](https://drop.com/?referer=R3SREZ)
PCB: Custom PCB
Switches: Drop Halo Clear
Keycaps: MT3 /dev/tty

### [Silent Tofu](./silent_tofu)
Case: Tofu 60
PCB: dz60rgb Hotswap
Switches: NK Silk Switches
Keycaps: NK BOW

### [Milky Neko](./milky_neko)
Case: Bakeneko 60 by Cannon Keys
PCB: db60 Hotswap
Switches: Boba U4 (68g)
Keycaps: PBT Notion by [biip][]

### [Mirage Envoy](./mirage_envoy)
Case: Mode Envoy (Mirage chassis and Multicolor accents and weight)
Switches: Boba U4 (62g)
Switches: PBT Industrial Keys by [biip][]

[biip]: https://www.instagram.com/biipmk/
[Drop Alt High Profile]: https://drop.com/buy/drop-alt-high-profile-barebones-keyboard
