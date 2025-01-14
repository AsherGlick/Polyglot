#!/bin/bash

docker run \
	--rm \
	--volume "$(pwd)"/src:/app/src:ro \
	--workdir /app \
	gcc:latest \
	sh -c "g++ src/main.cpp -o main && ./main"
