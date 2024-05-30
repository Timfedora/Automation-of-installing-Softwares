#!/bin/sh

echo "please enter your laptops password"
sudo echo

cd || exit 
               
mkdir Softwares || { echo "Unable to make software folder, exiting..."; exit 1; }

cd Softwares || { echo "Unable to change to software folder, exiting..."; exit 1; }

mkdir Vscode

mkdir Kicad

mkdir Blender

sudo apt install mpv -y || echo unable to install mpv

sudo apt install pluma -y  || echo unable to install pluma

cd Vscode || exit

curl -L -o vscode.deb 'https://code.visualstudio.com/sha/download?build=stable&os=linux-deb-x64'

sudo apt install ./vscode.deb -y

rm vscode.deb

sudo apt install flatpak -y

sudo add-apt-repository -y ppa:kicad/kicad-8.0-releases

sudo apt update -y

sudo apt install -y kicad

cd Blender || exit 

curl -L -o org.blender.Blender.flatpakref 'https://dl.flathub.org/repo/appstream/org.blender.Blender.flatpakref'

sudo flatpak install ./org.blender.Blender.flatpakref -y

rm org.blender.Blender.flatpakref


cd || exit 

echo ""
echo "========= SUCCESS ==========="
echo ""





