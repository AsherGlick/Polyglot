#!/bin/bash

docker run \
	--rm \
	--volume "$(pwd)"/src:/app/src:ro \
	--workdir /app \
	php:8.3.15-cli \
	sh -c "php src/main.php"
