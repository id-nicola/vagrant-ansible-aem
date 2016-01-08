#!/usr/bin/env bash

PS3='Install Ansible and Vagrant on: '
options=("Mac [1]" "CentOS [2]" "Ubuntu [3]" "Quit [4]")
select opt in "${options[@]}"
do
    case $opt in
        "Mac OS Yosemite by ways of brew and brew-cask [1]")
            echo "Mac OS Yosemite"

            echo "Install Command Line Tools ..."
            touch /tmp/.com.apple.dt.CommandLineTools.installondemand.in-progress;
            PROD=$(softwareupdate -l | grep "\*.*Command Line" | head -n 1 | awk -F"*" '{print $2}' | sed -e 's/^ *//' | tr -d '\n')
            softwareupdate -i "$PROD" -v;

            echo "Install Brew ..."
            ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

            echo "Install Brew-cask ... "
            brew install brew-cask

            echo "Installing Ansible ..."
            brew install ansible

            echo "Installing Vagrant ..."
            brew install vagrant
            ;;
        "CentOS [2]")
            echo "CentOS OS"
            echo "Not available at this time."
            ;;
        "Ubuntu [3]")
            echo "Ubuntu OS"
            echo "Not available at this time."
            ;;
        "Skip this step [4]")
            break
            ;;
        *) echo Invalid option;;
    esac
done