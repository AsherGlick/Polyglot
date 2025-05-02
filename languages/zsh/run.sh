#!/bin/bash

docker run \
	--rm \
	--volume "$(pwd)"/src:/app/src:ro \
	--workdir /app \
	ghcr.io/asherglick/zsh-alpine:1746157818 \
	zsh "src/main.sh"
