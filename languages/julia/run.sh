#!/bin/bash

docker run \
	--rm \
	--volume "$(pwd)"/src:/app/src:ro \
	--workdir /app \
	julia:1.11.5-alpine \
	sh -c "julia src/main.jl"
