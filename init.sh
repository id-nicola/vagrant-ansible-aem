#!/usr/bin/env bash
sudo chmod 775 ansible-aem/init.sh
sudo chmod 775 get_packages-6_0.sh
sudo chmod 775 get_packages-6_1.sh
cp nodes.json.default nodes.json
./ansible-aem/init.sh