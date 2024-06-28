#!/bin/bash

PROJECT_NAME=$1

print_usage() {
    echo "Creating project $PROJECT_NAME"
}

if [ "$PROJECT_NAME" ]; then
  print_usage
else
    exit 1
fi

nest new $PROJECT_NAME --package-manager npm


cd $PROJECT_NAME
../install-dependencies.sh
../generate-env-file.sh
../generate-dockerfile.sh
../generate-docker-compose-yml.sh
../generate-docker-ignore.sh


echo "Project created successfully!"