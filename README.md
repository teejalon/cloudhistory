Ansible-playbook for launching cloud history and eucalyptus datawarehouse
=================

Expects RHEL/CENTOS6 [tested on rhel6.3 64b]

Create security group and keypair
Modify the vars/euca-dw.yml to match your environment

Source your clouds credentials

Launch the playbook with command
ansible-playbook -vvv --private-key=mykey.private cloudhistory-ec2.yml

use reemon for read only access to history db
eemon to write access to historydb

allow the access to ports you have used for your security group
for example like this:

euca-authorize -P icmp -t -1:-1 -s 0.0.0.0/0 cloudhistdw

euca-authorize -P tcp -p 8443 -s 0.0.0.0/0 cloudhistdw

euca-authorize -P tcp -p 22 -s 0.0.0.0/0 cloudhistdw

euca-authorize -P tcp -p 80 -s 0.0.0.0/0 cloudhistdw

Access the data with browser using http://instanceaddress
