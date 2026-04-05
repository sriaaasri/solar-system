#!/bin/bash

# export MONGO_USERNAME=${{ vars.MONGO_USERNAME }}
echo "MONGO_USERNAME - $MONGO_USERNAME"
echo "MONGO_URI = $MONGO_URI"
echo "MONGO_PASSWORD = $MONGO_PASSWORD"

docker images

echo "Running solar-system image"

docker run -d -p 3000:3000 \
              -e MONGO_URI=$MONGO_URI \
              -e MONGO_USERNAME=$MONGO_USERNAME \
              -e MONGO_PASSWORD=$MONGO_PASSWORD \
               chowdary2001/solar-system:e53c12b24c4384099c0c4c2576c96f5d0bebd7d4 

echo testing contianer status
wget -q -O - localhost:3000/live | grep live
