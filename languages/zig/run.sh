#!/bin/bash

docker run \
	--rm \
	--volume "$(pwd)"/src:/src:ro \
	--workdir /app \
	ghcr.io/asherglick/zig-alpine:1746160714 \
	sh -c "cp -r /src ./src && cd src && zig build && ./zig-out/bin/main"
