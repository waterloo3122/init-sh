#!/bin/bash

setenforce 0
sed -i "s/enforcing/disabled/g" `grep enforcing -rl /etc/selinux/config`

systemctl disable firewalld
systemctl stop firewalld
systemctl status firewalld


