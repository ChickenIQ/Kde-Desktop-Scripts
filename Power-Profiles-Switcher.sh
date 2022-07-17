#!/bin/bash

if powerprofilesctl get | grep -q power-saver ;then
  powerprofilesctl set balanced
  qdbus org.kde.plasmashell /org/kde/osdService org.kde.osdService.showText "power-profile-balanced-symbolic" "Balanced"

elif powerprofilesctl get | grep -q balanced ;then
  powerprofilesctl set performance
  qdbus org.kde.plasmashell /org/kde/osdService org.kde.osdService.showText "power-profile-performance-symbolic" "Performance"

else
  powerprofilesctl set power-saver
  qdbus org.kde.plasmashell /org/kde/osdService org.kde.osdService.showText "power-profile-power-saver-symbolic" "Power Saver"
fi
