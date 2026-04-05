#!/bin/bash

export MONGO_USERNAME=${{ vars.MONGO_USERNAME }}
echo "MONGO_USERNAME - $MONGO_USERNAME"
docker images