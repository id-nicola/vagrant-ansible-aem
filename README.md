Introduction
====================
This is an introduction to the Vagrant Ansible AEM project. The following document provides proper information to get
started using AEM 6.0 in an Vagrant box with Ansible as a provisioner tool.
 
 
Pre-requisites
====================
Install:
        * Ansible
        * Vagrant
        * VirtualBox
        
You will need multiple file that are not included in this repository for legal reasons here is a list of those files and
where they should live:
        * ansible-aem/roles/aem-install/files/aem-author-4502.jar
        * ansible-aem/roles/aem-install/files/license.properties
        * ansible-aem/roles/aem-install/files/AEM_6.0_Service_Pack_3-6.0.SP3.zip


Install AEM in vagrant
======================
Once this is done you are ready to get going execute the following commands within the repository directory:
        $ sudo chmod 775 init.sh
        $ ./init.sh
        $ vagrant up
        
        
Go get tea, this will build everything for you!