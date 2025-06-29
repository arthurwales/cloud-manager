#!/bin/bash
RED='\033[0;31m'
GREEN='\033[0;32m'
NC='\033[0m'

echo -e "${GREEN}>>> Updating system${NC}"
sudo apt update
sudo apt upgrade -y

echo -e "${GREEN}>>> Installing Docker${NC}"
sudo apt install -y docker.io
sudo curl -L "https://github.com/docker/compose/releases/download/v2.23.0/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose

echo -e "${GREEN}>>> Starting Application${NC}"
sudo docker-compose up -d

echo -e "${GREEN}✔✔✔ Setup Complete! ✔✔✔${NC}"
echo -e "Access your dashboard at:"
echo -e "${RED}http://$(curl -4s ifconfig.co):3000${NC}"
