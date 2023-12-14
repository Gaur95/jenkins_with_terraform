#!/bin/bash
sudo yum update
sudo yum install httpd -y
sudo echo "<h1>HELLLOOOOOOO DOSTO</h1>" > /var/www/html/index.html
sudo systemctl start httpd
sudo systemctl enable httpd
