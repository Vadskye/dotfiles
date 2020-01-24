#!/bin/bash

gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-up "['<Super><Alt>i']"
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-left "['<Super><Alt>j']"
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-down "['<Super><Alt>k']"
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-right "['<Super><Alt>l']"

gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-up "['<Alt><Control>i']"
gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-left "['<Alt><Control>j']"
gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-down "['<Alt><Control>k']"
gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-right "['<Alt><Control>l']"
