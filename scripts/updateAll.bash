#!/bin/bash

dir_path="$(cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd)"

docker-compose -f $dir_path/../docker-compose.yml stop

docker-compose -f $dir_path/../docker-compose.yml rm -f client router auth lobby game

cd ../BE-Project-client || exit 1
git pull
cd ../BE-Project-router || exit 1
git pull
cd ../BE-Project-authentication || exit 1
git pull
cd ../BE-Project-lobby || exit 1
git pull
cd ../BE-Project-game || exit 1
git pull

source $dir_path/buildAll.bash

cd $dir_path/.. || exit 1
docker-compose up