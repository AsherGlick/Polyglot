#!/bin/bash

docker run \
	--rm \
	--volume "$(pwd)"/src:/app/src:ro \
	--volume "$(pwd)"/go.mod:/app/go.mod:ro \
	--workdir /app \
	golang:1.23-alpine \
	sh -c "go build -o hello ./src && ./hello"
