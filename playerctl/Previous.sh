#!/bin/bash
playerctl --player=spotify previous &&
qdbus org.kde.plasmashell /org/kde/osdService org.kde.osdService.showText "spotify" "Previous Track"
