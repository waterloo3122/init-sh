#!/bin/bash
yum -y install yum-utils 
yum -y groupinstall development
yum -y install https://centos7.iuscommunity.org/ius-release.rpm
yum -y install python36u python36u-devel python36u-pip


