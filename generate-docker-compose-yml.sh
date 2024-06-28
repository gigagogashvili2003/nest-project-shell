!/bin/bash

echo "Creating docker-compose.yml"
cat <<EOL > docker-compose.yml

version: '3.7'

services:
  app:
    container_name: app
    build:
      context: .
      target: development
    volumes:
      - .:/usr/src/app
      - /usr/src/app/node_modules
    ports:
      - ${SERVER_PORT}:${SERVER_PORT}
    command: npm run start:dev
    env_file:
      - .env
    depends_on:
      - db

  db:
    image: postgres:15
    container_name: db
    env_file:
      - .env
    ports:
      - ${POSTGRES_PORT}:${POSTGRES_PORT}
    volumes:
      - postgres_data:/var/lib/postgresql/data

volumes:
  postgres_data:

EOL
