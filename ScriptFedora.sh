#!/bin/sh

echo "please enter your laptops password"
sudo echo

cd || exit 

mkdir Softwares || { echo "Unable to make software folder, exiting..."; exit 1; }

cd Softwares || { echo "Unable to change to software folder, exiting..."; exit 1; }

mkdir VScode

mkdir Kicad

mkdir Qucs

mkdir Blender

cd || exit 

dnf install qucs -y || echo unable to install qucs

sudo dnf install blender -y || echo unable to install blender 

sudo dnf install mpv -y ||  echo echo unable to install mpv

sudo dnf install pluma -y  ||  echo echo unable to install pluma

cd Softwares || exit

cd VScode || exit

curl -L -o vscode.rpm 'https://code.visualstudio.com/sha/download?build=stable&os=linux-rpm-x64'

sudo dnf install vscode.rpm -y

rm vscode.rpm

sudo dnf install -y dnf-plugins-core

sudo dnf copr enable -y @kicad/kicad-testing

sudo dnf install -y kicad kicad-packages3d kicad-doc

echo ""
echo "========= SUCCESS ==========="
echo ""


