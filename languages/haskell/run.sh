#!/bin/bash

docker run \
	--rm \
	--volume "$(pwd)"/src:/src:ro \
	--workdir /app \
	haskell:9.10-bullseye \
	sh -c "cp -r /src src && ghc -o out src/main.hs && ./out"
