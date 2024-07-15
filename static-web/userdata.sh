#! bin/bash
dnf update -y 
dnf dnf install httpd -y
systemctl start httpd
systemctl enable httpd
cd /var/www/html
FOLDER="https://raw.githubusercontent.com/XYFatma/101-kittens-carousel-static-website-ec2/main/static-web"
wget ${FOLDER}/index.html
wget ${FOLDER}/cat0.jpg
wget ${FOLDER}/cat1.jpg
wget ${FOLDER}/cat3.jpg