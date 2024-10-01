#!/bin/bash

# Run any initial setup commands
chmod +x /usr/src/app/simple-node-js-react-npm-app/jenkins/scripts/test.sh
/usr/src/app/simple-node-js-react-npm-app/jenkins/scripts/test.sh

# Copy the application files to the remote server
scp -r /usr/src/app/simple-node-js-react-npm-app azusr@20.196.92.64:/home/azusr/nodeprojectdeployment/usingfreestyle && \
ssh azusr@20.196.92.64 "npm install && npm start &"

# Keep the container running
exec "$@"
