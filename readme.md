## Jetbrains IDEs
Prferences used to be stored in  `~/Library/Preferences/<Application><Version>`, but Android Studio currently uses  `~/Library/Application\ Support/Google/<Application><Version>`. Examples:
    - `~/Library/Preferences/Gogland1.0/keymaps/`
    - `~/Library/Application\ Support/Google/AndroidStudio2021.2`

Within the `Preferences` directoy:
  - Key bindings are stored in `./keymaps`
  - Syntax highlighting schemes are stored in `./colors`

### Key Bindings

Selected in _Preferences->Keymap_.

### Syntax Highlighting

Select in _Preferences->Editor->Color Scheme_.

### Setup

    ~/Library/Application\ Support/Google/AndroidStudio2021.2/keymaps
    ln -s `pwd`/keymaps/vino.xml ~/Library/Application\ Support/Google/AndroidStudio2021.2/keymaps/vino.xml

    ~/Library/Application\ Support/Google/AndroidStudio2021.2/colors
    ln -s `pwd`/colors/vino.icls ~/Library/Application\ Support/Google/AndroidStudio2021.2/colors/vino.icls
