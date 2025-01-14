#!/bin/bash

docker run \
	--rm \
	--volume "$(pwd)"/src:/app/src:ro \
	--volume "$(pwd)"/Cargo.toml:/app/Cargo.toml:ro \
	--workdir /app \
	rust:latest \
	sh -c "cargo run"
