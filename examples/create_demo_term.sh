#!/bin/bash

XDG_CONFIG_HOME=~/.config_presentation xfce4-terminal --maximize --hide-menubar --disable-server -T "Historical" -e "`pwd`/create_demo_tab.sh historical" --tab -T "jigsaw" -e "`pwd`/create_demo_tab.sh jigsaw" --tab -T "JShell" -e "`pwd`/create_demo_tab.sh jshell" --tab -T "Strings" -e "`pwd`/create_demo_tab.sh strings" --tab -T "LVTI" -e "`pwd`/create_demo_tab.sh lvti" --tab -T "ValueObjects" -e "`pwd`/create_demo_tab.sh value_objects" &

