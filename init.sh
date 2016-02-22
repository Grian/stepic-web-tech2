#!/bin/bash
NAME=webtech1.conf
mkdir -p $PWD logs
sudo ln -fs $PWD/etc/nginx.conf /etc/nginx/sites-enabled/$NAME
sudo /etc/init.d/nginx restart
sudo ln -fs $PWD/etc/hello.py /etc/gunicorn.d/hello.py
sudo /etc/init.d/gunicorn restart
