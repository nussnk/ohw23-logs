#!/bin/bash

ln -sf /usr/share/zoneinfo/Europe/Moscow /etc/localtime

systemctl restart chronyd.service

yum install epel-release -y
yum install vim -y

cp /vagrant/log/rsyslog.conf /etc/
cp /vagrant/log/auditd.conf /etc/audit/
systemctl restart rsyslog.service
service auditd restart

