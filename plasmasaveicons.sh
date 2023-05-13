#!/bin/bash
# get the acutal screen resolution via xdpyinfo 
resolution=$( xdpyinfo | grep dimensions | sed -r 's/^[^0-9]*([0-9]+x[0-9]+).*$/\1/')
echo $resolution detected
# copy the current plasma config to one with the resolution appendix
cp ~/.config/plasma-org.kde.plasma.desktop-appletsrc ~/.config/plasma-org.kde.plasma.desktop-appletsrc.$resolution
tar zcvf /home/picard/.config/plasmaicons.$resolution.tar.gz /home/picard/.local/share/plasma_icons/
echo Icon Positions saved:
ls ~/.config/plasma-org.kde.plasma.desktop-appletsrc* -la

