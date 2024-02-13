#!/bin/bash

# Update package index
sudo apt update

# Install Java
sudo apt install -y default-jdk

# Add Jenkins repository key
wget -q -O - https://pkg.jenkins.io/debian-stable/jenkins.io.key | sudo apt-key add -

# Add Jenkins repository to sources list
sudo sh -c 'echo deb http://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'

# Update package index again
sudo apt update && sudo apt upgrade

# Install Jenkins
sudo apt install -y jenkins

# Start Jenkins
sudo systemctl start jenkins

# Get initial admin password
sudo cat /var/lib/jenkins/secrets/initialAdminPassword > ~/jenkins_admin_password.txt

# Change permissions (read only for root) of the password file
chmod 400 ~/jenkins_admin_password.txt

# Display initial admin password
echo "Jenkins initial admin password has been saved to ~/jenkins_admin_password.txt"
