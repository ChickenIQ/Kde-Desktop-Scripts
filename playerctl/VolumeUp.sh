#!/bin/bash
playerctl --player=spotify volume 0.1+ &&
vol=$(echo "$(playerctl --player=spotify volume)*100" | bc | awk '{print int($1+0.5)}')
qdbus org.kde.plasmashell /org/kde/osdService org.kde.osdService.showText "spotify" "Volume: $vol%"
