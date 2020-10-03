#!/bin/bash
#set -e
##################################################################################################################
# Author	:	Brad Heffernan
##################################################################################################################
#
#   DO NOT JUST RUN THIS. EXAMINE AND JUDGE. RUN AT YOUR OWN RISK.
#
##################################################################################################################
echo "#############################"
echo "SPECIALITIES"
echo "#############################"
echo
sudo pacman -Syyu
echo
echo "#############################"
echo "REMOVALS"
echo "#############################"
echo "We have removed these packages from the iso :"
echo
echo "#############################"
echo "INSTALLATIONS"
echo "#############################"
echo "We have installed these packages on the iso :"
echo
echo "correction for the version number - not a downgrade"
sudo pacman -S hefftor-betterlockscreen-cache-git --noconfirm --needed
echo

echo "##########################################"
echo "CHANGING VERSION IN /ETC/LSB-RELEASE"
echo "##########################################"

sudo sed -i 's/\(^DISTRIB_RELEASE=\).*/\1v20.1.6/' /etc/lsb-release

echo "################################################################"
echo "###                   LSB-RELEASE DONE                       ####"
echo "################################################################"
