#!/bin/bash

docker run \
	--rm \
	--volume "$(pwd)"/src:/app/src:ro \
	--workdir /app \
	openjdk:17-alpine \
	sh -c "javac src/HelloWorld.java -d build; cd build; java HelloWorld"
