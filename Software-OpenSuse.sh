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
        1) sudo zypper install -y atom ;;
        2) sudo zypper install -y pluma ;;
        3) sudo zypper install -y gedit ;;
        4) sudo zypper install -y emacs ;;
        5) sudo zypper install -y vim ;;
        6) sudo zypper install -y kwrite ;;
        7) 
            echo "Downloading Visual Studio Code..."
            curl -L -o vscode.rpm 'https://code.visualstudio.com/sha/download?build=stable&os=linux-rpm-x64'
            sudo zypper install vscode.rpm -y
            rm vscode.rpm ;;
        8) sudo zypper install -y mpv ;;
        9) sudo zypper install -y audacity ;;
        10) sudo zypper install -y qucs ;;
        11) 
            echo "Installing KiCad..."
            sudo zypper ar -f https://download.opensuse.org/repositories/science/openSUSE_Leap_15.2 science
            sudo zypper refresh
            sudo zypper install -y kicad ;;
        12) sudo zypper install -y tilix ;;
        13) sudo zypper install -y konsole ;;
        14) sudo zypper install -y gparted ;;
        *) echo "Invalid selection" ;;
    esac
}

for selection in $selections; do
    install_software "$selection"
done

