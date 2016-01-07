#!/usr/bin/env bash
sudo chmod 775 ansible-aem/setup.sh
cp nodes.json.default node.json
./ansible-aem/setup.sh