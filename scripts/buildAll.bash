#!/bin/bash

echo "Building web client..."
cd ../BE-Project-client || exit 1
docker build -t be-project-client --build-arg API_URL=http://51.15.236.37:8080 .

echo "Building router server..."
cd ../BE-Project-router || exit 1
docker build -t be-project .

echo "Building auth server..."
cd ../BE-Project-authentication || exit 1
docker build -t be-project-authentication .

echo "Building lobby server..."
cd ../BE-Project-lobby || exit 1
docker build -t be-project-lobby .

echo "Building game server..."
cd ../BE-Project-game || exit 1
docker build -t be-project-game .
