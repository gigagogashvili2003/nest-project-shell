!/bin/bash

echo "Creating docker ignore"
cat <<EOL > .dockerignore

node_modules
EOL

echo "Docker ignore created succesfully!"