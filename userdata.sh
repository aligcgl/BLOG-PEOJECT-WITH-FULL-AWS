#!/bin/bash
apt-get update -y
apt-get install git -y
apt-get install python3 -y
cd /home/ubuntu/
git clone https://github.com/aligcgl/BLOG-PROJECT-WITH-FULL-AWS.git
cd /home/ubuntu/<BLOG-PROJECT-WITH-FULL-AWS>
apt install python3-pip -y
apt-get install python3.7-dev libmysqlclient-dev -y
pip3 install -r requirements.txt
cd /home/ubuntu/<BLOG-PROJECT-WITH-FULL-AWS>/src
python3 manage.py collectstatic --noinput
python3 manage.py makemigrations
python3 manage.py migrate
python3 manage.py runserver 0.0.0.0:80