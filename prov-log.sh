#!/bin/bash

ln -sf /usr/share/zoneinfo/Europe/Moscow /etc/localtime

systemctl restart chronyd

yum install epel-release -y
yum install vim -y

cp /vagrant/log/auditd.conf /etc/audit/
service auditd restart

