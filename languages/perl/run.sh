#!/bin/bash

docker run \
	--rm \
	--volume "$(pwd)"/src:/app/src:ro \
	--workdir /app \
	perl:latest \
	sh -c "perl ./src/main.pl"
