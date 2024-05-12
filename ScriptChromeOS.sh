#!/bin/sh

mkdir Softwares

cd Softwares

mkdir Vscode

mkdir Kicad

mkdir Blender

cd Vscode

curl -L -o vscode.deb 'https://code.visualstudio.com/sha/download?build=stable&os=linux-deb-x64'

sudo apt install ./vscode.deb -y

rm vscode.deb

sudo apt install flatpak -y

cd Kicad

curl -L -o org.kicad.KiCad.flatpakref 'https://dl.flathub.org/repo/appstream/org.kicad.KiCad.flatpakref'


sudo flatpak install ./org.kicad.KiCad.flatpakref -y

rm org.kicad.KiCad.flatpakref

cd Blender

curl -L -o org.blender.Blender.flatpakref 'https://dl.flathub.org/repo/appstream/org.blender.Blender.flatpakref'

sudo flatpak install ./org.blender.Blender.flatpakref -y

rm org.blender.Blender.flatpakref

sudo apt install pluma -y

sudo apt install mpv -y

cd 

echo ""
echo "========= SUCCESS ==========="
echo ""




