#!/bin/bash

ln -sf /usr/share/zoneinfo/Europe/Moscow /etc/localtime

systemctl restart chronyd

yum install epel-release -y
yum install vim nginx audispd-plugins -y

cp /vagrant/web/nginx.conf /etc/nginx/nginx.conf

systemctl restart nginx
rm /usr/share/nginx/html/img/header-background.png

curl http://127.0.0.1
curl http://127.0.0.1

cp /vagrant/web/audit.rules /etc/audit/rules.d/audit.rules
cp /vagrant/web/au-remote.conf /etc/audisp/plugins.d/
cp /vagrant/web/audisp-remote.conf /etc/audisp/
cp /vagrant/web/auditd.conf /etc/audit/
service auditd restart

echo  "# test" >> /etc/nginx/nginx.conf
