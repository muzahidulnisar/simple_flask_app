# Install Jenkins on a virtual machine or use a cloud-based Jenkins service.
#### sudo apt update
### sudo apt upgrade -y
### sudo apt install openjdk-17-jre
### curl -fsSL https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key | sudo tee /usr/share/keyrings/jenkins-keyring.asc > /dev/null
### echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] https://pkg.jenkins.io/debian-stable binary/ | sudo tee /etc/apt/sources.list.d/jenkins.list > /dev/null
### sudo apt-get update
### sudo apt-get install Jenkins
### sudo systemctl start Jenkins
### systemctl enable Jenkins
### systemctl status Jenkins

# Login to Jenkins
### http://hostname:8080

# Setup Email Service in Jenkins
### Go to Dashboard -->> Manage Jenkins -->> System
### Add SMPT server detail in "Extended E-mail Notification" with SMTP port 465 and add credential of gmail. Use SSL.
### Add Add SMTP server detail in "E-mail Notification" . In Advanced, select SMTP Authentication and enter username. Use SSL with port 465.
### Test configuration by sending test E-mail.

# Create Jenkins Pipeline
### Go to Dashboard -->> New Item
### Enter name and select Pipeline
### select Poll SCM in build trigger to check build every minute.
### Go to Pipeline and copy the code from jenkins-pipeline file ans save.
### Manually run the build and check the services.
