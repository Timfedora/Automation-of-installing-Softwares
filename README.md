# Software-Installer

Software-Installer is a Bash script designed to automate the installation of various software packages on a Linux system. It allows you to select and install multiple packages in one go, simplifying the setup process.

## Purpose

Installing software on a Linux system can sometimes be a tedious process, especially when multiple packages are needed. This script automates the installation of commonly used software, making it easier to get your system up and running with the tools you need.

## Supported Software

- **Text Editors:**
  - Atom
  - Pluma
  - Gedit
  - Emacs
  - Vim
  - Kwrite
  - Visual Studio Code

- **Audio & Video:**
  - MPV
  - Audacity

- **Electronics:**
  - Qucs
  - KiCad

- **Terminals:**
  - Tilix
  - Konsole

- **Other:**
  - GParted

## Prerequisites

- A Unix-like operating system (Linux).
- `dnf` package manager (used for Fedora, CentOS, RHEL).
- `curl` (for downloading packages).
- `sudo` privileges for installing software.

## Installation

1. **Clone or Download the Script:**

   ```bash
   git clone https://github.com/your-username/Software-Installer.git

