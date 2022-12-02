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
echo "CHECK PYTHON VERSION"
sudo python3.9 --version
echo "CREATE VENV"
python3.9 -m venv /home/ec2-user/env
source env/bin/activate
pip3 install gunicorn
pip3 install flask
sudo systemctl start gunicorn
sudo systemctl enable gunicorn
