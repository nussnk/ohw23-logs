#!/bin/bash

ln -s /usr/share/zoneinfo/Europe/Moscow /etc/localtime

systemctl restart chronyd

yum install epel-realease
yum install vim -y

cp /vagrant/log/auditd.conf /etc/audit/
service auditd restart

echo  "# test" >> /etc/nginx/nginx.conf
