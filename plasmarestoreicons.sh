#!/bin/bash
# get the acutal screen resolution via xdpyinfo 
resolution=$( xdpyinfo | grep dimensions | sed -r 's/^[^0-9]*([0-9]+x[0-9]+).*$/\1/')
file=~/.config/plasma-org.kde.plasma.desktop-appletsrc.$resolution
file2=~/.config/plasmaicons.$resolution.tar.gz
echo $resolution detected
# Test if we have a saved config
if test -f "$file2"; then
    echo "$file2 Zip exists."
    # replace the current plasma config icons with ones with the resolution appendix if it exists
   rm /home/picard/.local/share/plasma_icons/*
   tar xzvf $file2 -C /
   echo Icons restored!
  else
    echo "$file2 does not exist! Create one with the plasmasaveicons script!"
fi

echo "the config file I look for is:  $file"
# Test if we have a saved config
if test -f "$file"; then
    echo "$file exists."
    # replace the current plasma config with one with the resolution appendix if it exists
   pkill plasmashell
   cp $file ~/.config/plasma-org.kde.plasma.desktop-appletsrc
   sleep 3
   kstart5 plasmashell & 
    echo Icon Positions restored!
  else
    echo "$file does not exist! Create one with the plasmasaveicons script!"
fi
