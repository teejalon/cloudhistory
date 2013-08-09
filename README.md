ansible-playbook for cloud history and eucalyptus datawarehouse
=================

Expects RHEL/CENTOS6 [tested on rhel6.3 64b]
Playbooks for deploying and managing Eucalyptus using Ansible.

Modify the vars/euca-dw.yml to match your environment

Source your clouds credentials

Launch the playbook with command
ansible-playbook -vvv --private-key=mykey.private cloudhistory-ec2.yml

use reemon for read only access to history db
eemon to write access to historydb

Access the data with browser using http://instanceaddress
