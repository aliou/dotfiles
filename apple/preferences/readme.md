### OS X applications preferences.

#### Global
Install [Hack](https://github.com/chrissimpkins/Hack).

#### Iterm2
Follow instructions from this [SE thread](http://apple.stackexchange.com/questions/111534/iterm2-doesnt-read-com-googlecode-iterm2-plist/167143#167143)

#### Moom
* Quit Moom.
* Move the preference file to `~/Library/Preferences/`
* Relaunch Moom.

#### TextEdit
Open a new File instead of the iCloud dialog:
```sh
defaults write -g NSShowAppCentricOpenPanelInsteadOfUntitledFile -bool false
```
