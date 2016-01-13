#!/usr/bin/env bash
sudo chmod 775 ansible-aem/init.sh
cp nodes.json.default nodes.json
CURR_DIR=${PWD}
./ansible-aem/init.sh $CURR_DIR/ansible-aem