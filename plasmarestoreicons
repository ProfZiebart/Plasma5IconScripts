#!/bin/bash
# get the acutal screen resolution via xdpyinfo 
resolution=$( xdpyinfo | grep dimensions | sed -r 's/^[^0-9]*([0-9]+x[0-9]+).*$/\1/')
file=~/.config/plasma-org.kde.plasma.desktop-appletsrc.$resolution
echo $resolution detected
echo "the config file I look for is:  $file"
# Test if we have a saved config
if test -f "$file"; then
    echo "$file exists."
    # replace the current plasma config with one with the resolution appendix if it exists
   pkill plasmashell
   cp $file ~/.config/plasma-org.kde.plasma.desktop-appletsrc
  sleep 3
   kstart5 plasmashell &&
    echo Icon Positions restored!
  else
    echo "$file does not exist! Create one with the plasmasaveicons script!"
fi





