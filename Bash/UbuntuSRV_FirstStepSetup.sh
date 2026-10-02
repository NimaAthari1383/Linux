#!/bin/bash

echo "Installing SSH ..."

sudo apt install ssh

echo "Allow SSH Root Login ..."

sudo sed -i 's/#PermitRootLogin prohibit-password/PermitRootLogin yes/g' /etc/ssh/sshd_config

echo "Change SSH Port ..."

sudo sed -i 's/#Port 22/Port 8090/g' /etc/ssh/sshd_config
