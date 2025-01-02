#!/bin/sh

echo "Please enter your laptop's password"
sudo echo

echo "Software list"
echo "Text editors"
echo "(1) atom"
echo "(2) pluma"
echo "(3) gedit"
echo "(4) emacs"
echo "(5) vim"
echo "(6) kwrite"
echo "(7) vscode"
echo "(8) micro"
echo "(9) nano"
echo "Audio & Video"
echo "(10) mpv"
echo "(11) audacity"
echo "Electronics"
echo "(12) qucs"
echo "(13) kicad"
echo "Terminals"
echo "(14) tilix"
echo "(15) konsole"
echo "Other"
echo "(16) gparted"

echo "Please enter the numbers of the Softwares you would like with spaces"
read -r selections

install_software() {
    case "$1" in
        1) sudo pacman -S --noconfirm atom ;;
        2) sudo pacman -S --noconfirm pluma ;;
        3) sudo pacman -S --noconfirm gedit ;;
        4) sudo pacman -S --noconfirm emacs ;;
        5) sudo pacman -S --noconfirm vim ;;
        6) sudo pacman -S --noconfirm kwrite ;;
        7)
            echo "Downloading Visual Studio Code..."
            curl -L -o vscode.pkg.tar.zst 'https://code.visualstudio.com/sha/download?build=stable&os=linux-rpm-x64'
            sudo pacman -U --noconfirm vscode.pkg.tar.zst
            rm vscode.pkg.tar.zst ;;
        8) sudo pacman -S --noconfirm micro ;;
        9) sudo pacman -S --noconfirm nano ;;
        10) sudo pacman -S --noconfirm mpv ;;
        11) 
            echo "Installing KiCad..."
            sudo pacman -S --noconfirm audictiy ;;
        12) sudo pacman -S --noconfirm qucs ;;
        13) sudo pacman -S --noconfirm tilix ;;
        14) sudo pacman -S --noconfirm konsole ;;
        14) sudo pacman -S --noconfirm gparted ;;
        *) echo "Invalid selection" ;;
    esac
}

for selection in $selections; do
    install_software "$selection"
done

