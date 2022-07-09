# Plasma5IconScripts
Two Bash Scripts to save and restore Icon Positions in KDE Plasma 5. It's annoying having them jump around whilst working on multiple screens, e.g.

## Prerequisites
You need to have linux, a bash shell obviously a KDE with Plasma (I am on 5.24.5) and xdpyinfo.
I am working currently on a gentoo machine, let me know if you have trouble.
## Installation
in gentoo all I had to do was 
`emerge kde-plasma-meta xdpyinfo`
Download the scripts and make them executable
`chmod +x plasmasaveicons.sh`
`chmod +x plasmarestoreicons.sh`

## Usage and Funcion
Download the scripts. Order the icons and widgets in a fashion you like. Then save this configuration with the **plasmasaveicons.sh** script. It detects the screen resolution and writes the '~/.config/plasma-org.kde.plasma.desktop-appletsrc' to a file with the resolution as ending. So your settings don't get overwritten or "wrong" each time you switch a monitor or screen size. 

Once you find yourself again in a state where plasma has juggled your icons around, simple start the **plasmarestoreicons.sh** script. It looks for a suitable (with current resolution-ending) file, replaces (beware!) your current appletsrc with that one and restarts the desktop so the file gets loaded. Works for me.
