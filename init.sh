#!/usr/bin/env bash
sudo chmod 775 ansible-aem/init.sh
sudo chmod 775 get_packages.sh
cp nodes.json.default nodes.json
./ansible-aem/init.sh