#!/bin/bash

killall kwin_x11
kstart5 kwin_x11
killall plasmashell
kstart5 plasmashell
qdbus org.kde.KWin /Compositor suspend
qdbus org.kde.KWin /Compositor resume
sleep 3
qdbus org.kde.plasmashell /org/kde/osdService org.kde.osdService.showText "kde-logo" "Success!"
