# IDE Settings

Customized settings for IDEs.

#### XCode

- Prefernces
  - Stored in `~/Library/Preferences/com.apple.dt.Xcode.plist` as a binary plist.
  - Stores things like behaviours, colors, and text editing preferences.
- Keybindings
  - Stored as `.pbxkeys` files in `~/Library/Developer/Xcode/UserData/KeyBindings/**`.
    - (Prior to Xcode 5, these files were stored in `~/Library/Application Support/Xcode/Key Bindings`)
- User Breakpoints
  - Stored in `~/Library/Developer/Xcode/UserData/xcdebugger/Breakpoints_v2.xcbkptlist`.

Run `xcode-setup` _before_ running xcode to symlink the keybinding and breakpoint directories in the proper places. To clear the relevant directories:

    rm -rf ~/Library/Developer/Xcode
    # Or to clear the directories and the settings plist:
    rm -rf ~/Library/Preferences/com.apple.dt.Xcode.plist ~/Library/Developer/Xcode

The preferences plist has proven problematic to sync; apply preferences by hand:

- Behaivors
  - `Build->Fails`: +Show tab named Build
  - `Running->Pauses`: +Show tab named Debug
- Text Editing:
  - +Line Numbers
  - +Including whitespace-only lines
- Keybindings:
  - Switch to `vino`.
- Source Control:
  - -Add and remove files automatically

#### IntelliJ IDEA
- Preferences are stored in `~/Library/Preferences/IntelliJIDEA<#>` or `~/Library/Preferences/IdeaIC<#>`, where `<#>` is a version number.
  - Keymaps are stored in `/keymaps` relative to the preference directory.
  - Colors are stored in `/colors` relative to the preference directory.
