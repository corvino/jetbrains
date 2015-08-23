#!/usr/bin/env bash

dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

#
# Xcode
#

xcode_plist="$HOME/Library/Preferences/com.apple.dt.Xcode.plist"
xcode_userdata="$HOME/Library/Developer/Xcode/UserData/"
xcode_keybinding="$xcode_userdata/KeyBindings/vino.idekeybindings"
xcode_breakpoints="$xcode_userdata/xcdebugger/Breakpoints_v2.xcbkptlist"

if [[ -d "$xcode_userdata" ]]; then
    cp "$dir/Xcode/com.apple.dt.Xcode.plist" "$xcode_plist"
    echo "pushed Xcode preferences"

    if [[ ! -d `dirname "$xcode_keybinding"` ]]; then
        mkdir `dirname "$xcode_keybinding"`
    fi
    cp "$dir/Xcode/UserData/KeyBindings/vino.idekeybindings" "$xcode_keybinding"
    echo "pushed Xcode keybinding"

    if [[ ! -d `dirname "$xcode_breakpoints"` ]]; then
        mkdir `dirname "$xcode_breakpoints"`
    fi
    cp "$dir/Xcode/UserData/xcdebugger/Breakpoints_v2.xcbkptlist" "$xcode_breakpoints"
    echo "pushed Xcode breakpoints"
fi

#
# Intellij
#

intellij_prefs="$HOME/Library/Preferences/IdeaIC13"
intellij_colors="$intellij_prefs/colors/vino.icls"
intellij_keys="$intellij_prefs/keymaps/vino.xml"

if [[ -d "$intellij_prefs" ]]; then
    if [[ ! -d `dirname $intellij_colors` ]];then
        mkdir `dirname $intellij_colors`
    fi
    cp "$dir/intellij/colors/vino.icls" "$intellij_colors"
    echo "pushed IntelliJ colors"

    if [[ ! -d `dirname $intellij_keys` ]]; then
        mkdir `dirname $intellij_keys`
    fi
    cp "$dir/intellij/keymaps/vino.xml" "$intellij_keys"
    echo "pushed IntelliJ keymap"
fi
