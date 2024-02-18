#!/bin/bash

# referece https://pkg.jenkins.io/

# Update package index
sudo apt-get update


# Add Jenkins repository
sudo wget -O /usr/share/keyrings/jenkins-keyring.asc \
    https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key

# Add Jenkins apt repository
echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] \
    https://pkg.jenkins.io/debian-stable binary/ | sudo tee \
    /etc/apt/sources.list.d/jenkins.list > /dev/null

# Update package again

sudo apt-get update
sudo apt-get install fontconfig openjdk-17-jre

# Install Jenkins
sudo apt-get install jenkins -y

# Start Jenkins
sudo systemctl start jenkins

# Enable Jenkins
sudo systemctl enable jenkins

# Get initial admin password
sudo cat /var/lib/jenkins/secrets/initialAdminPassword > ~/jenkins_admin_password.txt

# Change permissions (read only for root) of the password file
chmod 400 ~/jenkins_admin_password.txt

# Display initial admin password
echo "Jenkins initial admin password has been saved to ~/jenkins_admin_password.txt"
