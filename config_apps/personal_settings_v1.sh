#!/bin/bash 
############################################################################
# Written to be used on 64 bits computers
# Author 	: 	Erik Dubois
# Website 	: 	http://www.erikdubois.be
############################################################################
# More from Erik Dubois
# conky and all its components are installed via an other script
# at http://sourceforge.net/projects/auroraconkytheme/
# Explanation on the use of this theme can be found at 
# http://erikdubois.be/category/linux/aurora-conky/
############################################################################
# the option -y has been added. It will autoinstall all. Omit if you do not want that.
############################################################################
#
#                                       
# MMMMMMMMMMMMMMMMMMMMMMMMMmds+.        
# MMm----::-://////////////oymNMd+`     
# MMd      /++                -sNMd:    
# MMNso/`  dMM    `.::-. .-::.` .hMN:   
# ddddMMh  dMM   :hNMNMNhNMNMNh: `NMm   
#     NMm  dMM  .NMN/-+MMM+-/NMN` dMM   
#     NMm  dMM  -MMm  `MMM   dMM. dMM   
#     NMm  dMM  -MMm  `MMM   dMM. dMM   
#     NMm  dMM  .mmd  `mmm   yMM. dMM   
#     NMm  dMM`  ..`   ...   ydm. dMM   
#     hMM- +MMd/-------...-:sdds  dMM   
#     -NMm- :hNMNNNmdddddddddy/`  dMM   
#      -dMNs-``-::::-------.``    dMM   
#       `/dMNmy+/:-------------:/yMMM  
#          ./ydNMMMMMMMMMMMMMMMMMMMMM  
#             \.MMMMMMMMMMMMMMMMMMM    
#                                      
#
#
############################################################################


echo "################################################################"
echo "Copy ulimit problem"
echo "################################################################"


sudo cp copy/60-copy.conf /etc/sysctl.d/60-copy.conf
sudo sysctl -p /etc/sysctl.d/60-copy.conf 


echo "################################################################"
echo "about config - do manually"
echo "################################################################"



echo "################################################################"
echo "fonts"
echo "################################################################"

[ -d "~/.fonts" ] || mkdir -p $HOME/".fonts"
cp fonts/* ~/.fonts/


echo "################################################################"
echo "gimp"
echo "################################################################"

[ -d "~/.gimp-2.8" ] || mkdir -p $HOME/".gimp-2.8"
[ -d "~/.gimp-2.8/scripts" ] || mkdir -p $HOME/".gimp-2.8/scripts"
cp gimp/scripts/* ~/.gimp-2.8/scripts

echo "################################################################"
echo "logo"
echo "################################################################"

[ -d "~/.gimp-2.8" ] || mkdir -p $HOME/".gimp-2.8"
[ -d "~/.gimp-2.8/scripts" ] || mkdir -p $HOME/".gimp-2.8/scripts"
cp logo/* /usr/share/cinnamon/theme/



echo "################################################################"
echo "nemo-scripts-plugin"
echo "################################################################"


sudo cp nemo-scripts-plugins/* ~/.local/share/nemo/scripts



echo "################################################################"
echo "plank"
echo "################################################################"

[ -d "~/.config/plank" ] || mkdir -p $HOME/".config/plank"
[ -d "~/.config/plank/dock1" ] || mkdir -p $HOME/".config/plank/dock1"
[ -d "~/.config/plank/dock1/launchers" ] || mkdir -p $HOME/".config/plank/dock1/launchers"
sudo cp plank/dock1/launchers ~/.config/plank/dock1/launchers


echo "################################################################"
echo "terminator"
echo "################################################################"

[ -d "~/.config/terminator" ] || mkdir -p $HOME/".config/terminator"
sudo cp terminator/config ~/.config/terminator/



echo "################################################################"
echo "gnome terminal"
echo "################################################################"


sudo apt-get install gconf-editor -y
gconftool-2 -t bool --set /apps/gnome-terminal/profiles/Default/scrollback_unlimited 1
gconftool-2 -t string --set /apps/gnome-terminal/profiles/Default/background_type transparent
gconftool-2 -t float --set /apps/gnome-terminal/profiles/Default/background_darkness 0.8


echo "########################################"
echo "########    T H E   E N D      #########"
echo "########################################"
