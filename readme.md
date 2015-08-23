# IDE Settings

Customized settings for IDEs.

Includes scripts to push and pull the settings into the appropriate places.

#### XCode

- Prefernces
  - Stored in **~/Library/Preferences/com.apple.dt.Xcode.plist**.
  - Stored as a binary file. As part of the pull process, is also copied and converted to XML to facilitate tracking changes.
  - The big target here is behaviours. Keeping them synced is the gateway to further customization.
  - Also get things like Text Editing preferences, including the all-important  **Automatically trim trailing white space** / **Including whitespace-only lines**.
- Keybindings
  - Stored as **.pbxkeys** files in **~/Library/Developer/Xcode/UserData/KeyBindings/**.
  - Prior to Xcode 5, these files were stored in **~/Library/Application Support/Xcode/Key Bindings**
- User Breakpoints
  - Stored in **~/Library/Developer/Xcode/UserData/xcdebugger/Breakpoints_v2.xcbkptlist**.

#### IntelliJ IDEA
- Preferences are stored in **~/Library/Preferences/IntelliJIDEA<#>** or **~/Library/Preferences/IdeaIC<#>**, where **<#>** is a version number.
  - Keymaps are stored in **/keymaps** relative to the preference directory.
  - Colors are stored in **/colors** relative to the preference directory.
