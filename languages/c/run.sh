#!/bin/bash

docker run \
	--rm \
	--volume "$(pwd)"/src:/app/src:ro \
	--workdir /app \
	gcc:latest \
	sh -c "gcc src/main.c -o main && ./main"
