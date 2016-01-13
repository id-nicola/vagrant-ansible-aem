#!/usr/bin/env bash
sudo chmod 775 ansible-aem/init.sh
sudo chmod 775 get_packages-6_0.sh
sudo chmod 775 get_packages-6_1.sh

PS3='Install AEM version : '
options=("AEM 6.0 [1]" "AEM 6.1 [2]" "Quit [3]")
select opt in "${options[@]}"
do
    case $opt in
        "AEM 6.0 [1]")
            ./get_packages-6_0.sh
        ;;
        "AEM 6.1 [2]")
            ./get_packages-6_1.sh
        ;;
        "Quit [3]")
            exit
        ;;
        *) echo Invalid option;;
    esac
done

cp nodes.json.default nodes.json
./ansible-aem/init.sh