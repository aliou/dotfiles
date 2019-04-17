### OS X applications preferences.

#### Global

Install the SF Mono font:
```code
open /Applications/Utilities/Terminal.app/Contents/Resources/Fonts/*
```

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

#### Mail.app
Disable send or reply animations:
```sh
defaults write com.apple.Mail DisableReplyAnimations -bool YES
defaults write com.apple.Mail DisableSendAnimations -bool YES
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

Move screenshot directory:
```sh
defaults write com.apple.screencapture location /Users/alioudiallo/Pictures/screenshots
```

Disable floating screenshot thumbnail

1. Open Screenshot.app
2. Click "options" at the bottom of the screen
3. Uncheck "Show Floating Thumbnail"

Dark menu bar and dock without Dark theme:
```sh
defaults write -g NSRequiresAquaSystemAppearance -bool Yes
```

Faster Key repeat:
```sh
defaults write -g InitialKeyRepeat -int 10 # normal minimum is 15 (225 ms)
defaults write -g KeyRepeat -int 1 # normal minimum is 2 (30 ms)
```
