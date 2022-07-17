#!/bin/bash
playerctl --player=spotify next &&
qdbus org.kde.plasmashell /org/kde/osdService org.kde.osdService.showText "spotify" "Next Track"
