### OS X applications preferences.

#### Global

Install [Hack](https://github.com/chrissimpkins/Hack).

#### iTerm

1. Open iTerm at least once.
2. Quit iTerm.
3. Delete cached preferences by running `defaults delete com.googlecode.iterm2`.
4. Copy the correct preference file to the preferences folder : `cp com.googlecode.iterm2.plist ~/Library/Preferences/`
5. Read in the prefs file with `defaults read -app iTerm`.

#### Moom

* Quit Moom.
* Move the preference file to `~/Library/Preferences/`
* Relaunch Moom.

#### TextEdit

Open a new File instead of the iCloud dialog:
```sh
defaults write -g NSShowAppCentricOpenPanelInsteadOfUntitledFile -bool false
```
