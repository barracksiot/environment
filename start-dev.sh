#!/bin/bash

export BARRACKS_LEGACY_BRANCH=1.0.0
export BARRACKS_BRANCH=2.0.0
export BASE_URL=https://localhost

docker-compose -p barracks pull
docker stack deploy --with-registry-auth -c docker-compose.yml barracks
