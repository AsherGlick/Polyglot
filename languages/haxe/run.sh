#!/bin/bash

docker run \
	--rm \
	--volume "$(pwd)"/src:/app/src:ro \
	--workdir /app \
	haxe:4.3-alpine \
	sh -c "haxe --class-path ./src --main 'Main' -neko main.n && neko main.n"
