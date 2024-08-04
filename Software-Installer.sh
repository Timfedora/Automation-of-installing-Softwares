#!/bin/bash

# Function to detect distribution
detect_distro() {
    if [ -f /etc/os-release ]; then
        . /etc/os-release
        case "$ID" in
            arch) ./Software-Arch.sh;;
            fedora) ./Software-Fedora-RHEL.sh;;
            rhel) ./Software-Fedora-RHEL.sh;;
            centos) ./Software-Fedora-RHEL.sh;;
            ubuntu) ./Software-Debian-Ubuntu.sh;;
            debian) ./Software-Debian-Ubuntu.sh;;
            opensuse) ./Software-OpenSuse.sh;; # Add openSUSE support
            *) echo "Unknown distribution";;
        esac
    else
        echo "Cannot determine distribution. /etc/os-release file not found."
    fi
}

# Call the function
detect_distro

