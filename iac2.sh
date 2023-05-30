#!/bin/bash

echo "Updating the server..."
apt-get update
apt-get upgrade -y
apt-get install apache2 -y
apt-get install unzip -y


echo "Downloading and copying application files..."

cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

echo "Installing unzip..."
apt-get install unzip -y

echo "Unzipying the file..."
unzip main.zip
cd linux-site-dio-main
cp -R * /var/www/html/

echo "Starting Apache server on WSL2..."
sudo service apache2 start

echo "Done! :)"