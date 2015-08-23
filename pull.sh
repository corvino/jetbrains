#!/usr/bin/env bash

dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

#
# Xcode
#

xcode_plist="$HOME/Library/Preferences/com.apple.dt.Xcode.plist"
xcode_userdata="$HOME/Library/Developer/Xcode/UserData/"
xcode_keybinding="$xcode_userdata/KeyBindings/vino.idekeybindings"
xcode_breakpoints="$xcode_userdata/xcdebugger/Breakpoints_v2.xcbkptlist"

if [[ -e "$xcode_plist" ]]; then
    cp "$xcode_plist" "$dir/Xcode/com.apple.dt.Xcode.plist"
    cp "$dir/Xcode/com.apple.dt.Xcode.plist" "$dir/Xcode/com.apple.dt.Xcode.xml.plist"
    plutil -convert xml1 "$dir/Xcode/com.apple.dt.Xcode.xml.plist"
    echo "pulled Xcode behaviours"
fi

if [[ (-e "$xcode_keybinding") ]]; then
    cp "$xcode_keybinding" "$dir/Xcode/UserData/KeyBindings/vino.idekeybindings"
    echo "pulled Xcode keybinding"
fi

if [[ (-e "$xcode_breakpoints") ]]; then
    cp "$xcode_breakpoints" "$dir/Xcode/UserData/xcdebugger/Breakpoints_v2.xcbkptlist"
    echo "pulled Xcode breakpoints"
fi

#
# Intellij
#

intellij_prefs="$HOME/Library/Preferences/IdeaIC13"
intellij_colors="$intellij_prefs/colors/vino.icls"
intellij_keys="$intellij_prefs/keymaps/vino.xml"

if [[ (-e "$intellij_colors") ]];then
    cp "$intellij_colors" "$dir/intellij/colors/vino.icls"
    echo "pulled IntelliJ colors"
fi

if [[ (-e "$intellij_keys" ) ]]; then
    cp "$intellij_keys" "$dir/intellij/keymaps/vino.xml"
    echo "pulled IntelliJ keymap"
fi
