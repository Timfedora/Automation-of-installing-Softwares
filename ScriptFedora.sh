#!/bin/sh

cd

mkdir Softwares

cd Softwares

mkdir VScode

mkdir Kicad

mkdir qucs

mkdir blender

cd VScode

curl -L -o vscode.rpm 'https://code.visualstudio.com/sha/download?build=stable&os=linux-rpm-x64'

sudo dnf install vscode.rpm -y

rm vscode.rpm

sudo dnf install -y dnf-plugins-core

sudo dnf copr enable -y @kicad/kicad-testing

sudo dnf install -y kicad kicad-packages3d kicad-doc

sudo dnf install qucs -y

sudo dnf install blender -y

sudo dnf install mpv -y 

sudo dnf install pluma -y

cd

echo ""
echo "========= SUCCESS ==========="
echo ""




