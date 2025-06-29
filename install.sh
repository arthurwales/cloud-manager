#!/bin/bash
RED='\033[0;31m'
GREEN='\033[0;32m'
NC='\033[0m' # No Color

echo -e "${GREEN}>>> Updating system${NC}"
sudo apt update
sudo apt upgrade -y

echo -e "${GREEN}>>> Installing Docker${NC}"
sudo apt install -y docker.io docker-compose

echo -e "${GREEN}>>> Downloading Cloud Manager${NC}"
git clone https://github.com/arthurwales/cloud-manager.git
cd cloud-manager

echo -e "${GREEN}>>> Starting Application${NC}"
sudo docker-compose up -d

echo -e "${GREEN}✔✔✔ Setup Complete! ✔✔✔${NC}"
echo -e "Access your dashboard at:"
echo -e "${RED}http://$(curl -4s ifconfig.co):3000${NC}"
