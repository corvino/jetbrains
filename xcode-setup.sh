#!/usr/bin/env bash

dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

xcode_userdata="$HOME/Library/Developer/Xcode/UserData"
settings_userdata="$dir/Xcode/UserData"

mkdir -p "$xcode_userdata"/KeyBindings

ln -s "$settings_userdata"/xcdebugger "$xcode_userdata"/
ln -s "$settings_userdata"/CodeSnippets "$xcode_userdata"/
ln -s "$settings_userdata"/KeyBindings/vino.idekeybindings "$xcode_userdata"/KeyBindings/
