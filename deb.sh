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
            curl -L -o atom.deb 'https://github.com/atom/atom/releases/download/v1.60.0/atom-amd64.deb'
            sudo apt install -y ./atom.deb
            rm atom.deb ;;
        2) sudo apt install -y pluma ;;
        3) sudo apt install -y gedit ;;
        4) sudo apt install -y emacs ;;
        5) sudo apt install -y vim ;;
        6) sudo apt install -y kwrite ;;
        7) 
            echo "Downloading Visual Studio Code..."
            curl -L -o vscode.deb 'https://code.visualstudio.com/sha/download?build=stable&os=linux-deb-x64'
            sudo apt install -y ./vscode.deb
            rm vscode.deb ;;
        8) sudo apt install -y mpv ;;
        9) sudo apt install -y audacity ;;
        10) sudo apt install -y qucs ;;
        11) 
            echo "Installing KiCad..."
            sudo apt install flatpak -y
            sudo apt install gnome-software-plugin-flatpak -y
            flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo -y
            flatpak install flathub org.kicad.KiCad -y
            sudo apt install -y kicad ;;
        12) sudo apt install -y tilix ;;
        13) sudo apt install -y konsole ;;
        14) sudo apt install -y gparted ;;
        *) echo "Invalid selection" ;;
    esac
}

for selection in $selections; do
    install_software "$selection"
done
