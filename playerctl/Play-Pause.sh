#!/bin/bash
playerctl --player=spotify play-pause &&
if playerctl --player=spotify status | grep -q Playing ;then
  qdbus org.kde.plasmashell /org/kde/osdService org.kde.osdService.showText "spotify" "Paused"
else
  qdbus org.kde.plasmashell /org/kde/osdService org.kde.osdService.showText "spotify" "Playing"
fi
