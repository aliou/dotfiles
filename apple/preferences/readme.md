### OS X applications preferences.

#### Global

Install the [Hack](https://github.com/chrissimpkins/Hack) and
[Input Mono](http://input.fontbureau.com/download/) fonts.

#### `*.plist` files
1. Open the application at least once.
2. Quit application.
3. Delete cached preferences by running `defaults delete <file>`.
4. Copy the correct preference file to the preferences folder : `cp <file> ~/Library/Preferences/`
5. Read in the prefs file with `defaults read -app <application>`.

#### TextEdit

Open a new File instead of the iCloud dialog:

```sh
defaults write -g NSShowAppCentricOpenPanelInsteadOfUntitledFile -bool false
```

#### Global

Remove animation when opening windows, popup, etc:

```sh
defaults write NSGlobalDomain NSAutomaticWindowAnimationsEnabled -bool false
```

Re-enable press and hold for accents (needs logout):
```sh
defaults write -g ApplePressAndHoldEnabled -bool true
```
