#!/bin/bash
sudo su -c 'echo "[r1soft]
name=R1Soft Repository Server
baseurl=http://repo.r1soft.com/yum/stable/$basearch/
enabled=1
gpgcheck=0 " > /etc/yum.repos.d/r1soft.repo'

sudo  yum install serverbackup-enterprise -y
sudo serverbackup-setup --user admin --pass r1soft
sudo serverbackup-setup --http-port 8080 --https-port 8443
sudo /etc/init.d/cdp-server restart 
