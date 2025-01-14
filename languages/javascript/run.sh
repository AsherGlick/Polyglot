#!/bin/bash

docker run \
	--rm \
	--volume "$(pwd)"/src:/app/src:ro \
	--volume "$(pwd)"/package.json:/app/package.json:ro \
	--workdir /app \
	node:18-alpine \
	sh -c "node src/main.js"
