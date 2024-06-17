#!/bin/bash

# Update and upgrade packages
sudo yum update -y

# Install Apache (httpd on Amazon Linux)
sudo yum install httpd -y

# Enable Apache (httpd) to start on boot
sudo systemctl enable httpd

# Start Apache (httpd)
sudo systemctl start httpd

