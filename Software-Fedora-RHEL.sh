#!/bin/sh

echo "Please enter your laptop's password"
sudo -v

echo "Software list"
echo "Text editors"
echo "(1) atom"
echo "(2) pluma"
echo "(3) gedit"
echo "(4) emacs"
echo "(5) vim"
echo "(6) kwrite"
echo "(7) vscode"
echo "Audio & Video"
echo "(8) mpv"
echo "(9) audacity"
echo "Electronics"
echo "(10) qucs"
echo "(11) kicad"
echo "Terminals"
echo "(12) tilix"
echo "(13) konsole"
echo "Other"
echo "(14) gparted"

echo "Please enter the numbers of the Softwares you would like with spaces"
read -r selections

install_software() {
    case "$1" in
        1) 
            echo "Downloading Atom..."
            curl -L -o atom.x86_64.rpm https://github.com/atom/atom/releases/download/v1.60.0/atom.x86_64.rpm
            sudo dnf install atom.x86_64.rpm -y
            rm atom.x86_64.rpm ;;
        2) sudo dnf install pluma -y ;;
        3) sudo dnf install gedit -y ;;
        4) sudo dnf install emacs -y ;;
        5) sudo dnf install vim -y ;;
        6) sudo dnf install kwrite -y ;;
        7) 
            echo "Downloading Visual Studio Code..."
            curl -L -o vscode.rpm 'https://code.visualstudio.com/sha/download?build=stable&os=linux-rpm-x64'
            sudo dnf install vscode.rpm -y
            rm vscode.rpm ;;
        8) sudo dnf install mpv -y ;;
        9) sudo dnf install audacity -y ;;
        10) sudo dnf install qucs -y ;;
        11) 
            echo "Installing KiCad..."
            sudo dnf install -y dnf-plugins-core
            sudo dnf copr enable -y @kicad/kicad-testing
            sudo dnf install -y kicad kicad-packages3d kicad-doc ;;
        12) sudo dnf install tilix -y ;;
        13) sudo dnf install konsole -y ;;
        14) sudo dnf install gparted -y ;;
        *) echo "Invalid selection" ;;
    esac
}

for selection in $selections; do
    install_software "$selection"
done

