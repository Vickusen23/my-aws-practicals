#!/bin/bash

yum update -y
yum install -y httpd

systemctl start httpd
systemctl enable httpd

echo "Hello world! Welcome to Vick's SAA Practical" > /var/www/html/index.html
