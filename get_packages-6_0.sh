#!/usr/bin/env bash
#Destination
DEST='./ansible-aem/roles/aem-install/files'

#Core
#Vulnerability in the Apache POI Library (Hot fix 6449 *)
HF_6449='https://www.adobeaemcloud.com/content/companies/public/adobe/packages/aem610/hotfix/cq-6.1.0-hotfix-6449/jcr%3acontent/package/file.res/cq-6.1.0-hotfix-6449-1.2.zip'
wget $HF_6449 -P $DEST