#!/bin/bash

docker run \
	--rm \
	--volume "$(pwd)"/src:/app/src:ro \
	--workdir /app \
	ghcr.io/asherglick/lua-alpine:1746158987 \
	sh -c "lua5.4 ./src/main.lua"
