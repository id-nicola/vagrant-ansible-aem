#!/usr/bin/env bash
sudo chmod 775 ansible-aem/init.sh
cp nodes.json.default nodes.json
./ansible-aem/init.sh