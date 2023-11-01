#!/bin/bash

sudo yum check-update -y
sudo yum upgrade -y 
sudo systemctl daemon-reload
sudo curl -sL "https://github.com/docker/compose/releases/download/v2.12.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +755 /usr/local/bin/docker-compose
docker-compose -v
