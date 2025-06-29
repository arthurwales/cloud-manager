version: '3.8'
services:
  frontend:
    image: node:20-bullseye
    working_dir: /app
    ports:
      - "3000:3000"
    command: >
      sh -c "git clone https://github.com/arthurwales/cloud-manager.git /app &&
      npm install &&
      npm run build &&
      npm start"
    environment:
      - NEXT_PUBLIC_BACKEND_URL=http://backend:3001

  backend:
    image: node:20-bullseye
    working_dir: /app
    ports:
      - "3001:3001"
    command: >
      sh -c "git clone https://github.com/arthurwales/cloud-manager.git /app &&
      cd backend &&
      npm install &&
      node server.js"
