#!/bin/bash
sudo yum install gcc openssl-devel bzip2-devel libffi-devel -y
sudo wget https://www.python.org/ftp/python/3.9.6/Python-3.9.6.tgz
sudo tar xzf Python-3.9.6.tgz
cd /home/ec2-user/Python-3.9.6
sudo ./configure --enable-optimizations
sudo make altinstall
cd /home/ec2-user
echo "ENTER DIRECTORY"
pwd
sudo rm -f Python-3.9.6.tgz
cd ..
/usr/local/bin/python3.9 -m venv env
source env/bin/activate
pip3 install gunicorn
pip3 install flask
