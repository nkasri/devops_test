#!/bin/bash
# Clone the repository
sudo git clone https://github.com/nkasri/devops_test.git
# Install Docker engine
sudo apt-get update
sudo apt-get install \
    ca-certificates \
    curl \
    gnupg \
    lsb-release
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --batch --yes --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
sudo  echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update
sudo apt-get -y install docker-ce docker-ce-cli containerd.io
cd devops_test || { echo "Failure"; exit 1;}

# Build image
sudo docker build . -t pet-clinic
# Run the application container
sudo docker run -d -p 80:5000 pet-clinic
