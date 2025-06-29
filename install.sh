#!/bin/bash
set -e
APP_DIR="/opt/cloud-manager"
GIT_REPO="https://github.com/arthurwales/cloud-manager.git"
PORT=3000
echo "🛠️ Installing Docker and dependencies..."
apt-get update -y
apt-get install -y curl git docker.io docker-compose
systemctl start docker
systemctl enable docker
echo "📦 Cloning project..."
rm -rf "$APP_DIR"
git clone "$GIT_REPO" "$APP_DIR"
cd "$APP_DIR"
echo "📄 Copy .env file (customize manually after setup)"
cp .env.example .env
echo "🚀 Building and starting app..."
docker-compose up -d
echo ""
echo "✅ Installed! Open in your browser:"
echo "👉 http://$(curl -s ifconfig.me):$PORT"
