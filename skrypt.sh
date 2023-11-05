#!/bin/bash

sudo yum check-update
sudo yum upgrade
sudo systemctl daemon-reload
sudo curl -SL https://github.com/docker/compose/releases/download/v2.23.0/docker-compose-linux-x86_64 -o /usr/local/bin/docker-compose
sudo chmod +755 /usr/local/bin/docker-compose
