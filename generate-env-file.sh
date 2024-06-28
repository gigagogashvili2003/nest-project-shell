!/bin/bash

echo "Creating .env file"
cat <<EOL > .env

POSTGRES_HOST=db
POSTGRES_PORT=5432
POSTGRES_USER=postgres
POSTGRES_PASSWORD=postgres
POSTGRES_DB=postgres
PORT=3000
EOL

echo "Env files created succesfully!"