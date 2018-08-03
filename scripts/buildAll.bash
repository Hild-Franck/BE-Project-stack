#!/bin/bash

echo "Building web client..."
cd ../BE-Project-client || exit 1
docker build -t be-project-client .

echo "Building router server..."
cd ../BE-Project-router || exit 1
docker build -t be-project .

echo "Building auth server..."
cd ../BE-Project-authentication || exit 1
docker build -t be-project-authentication .
