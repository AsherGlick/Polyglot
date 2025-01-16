#!/bin/bash

docker run \
	--rm \
	--volume "$(pwd)"/src:/app/src:ro \
	--volume "$(pwd)"/app.csproj:/app/app.csproj:ro \
	--workdir /app \
	mcr.microsoft.com/dotnet/sdk:9.0 \
	sh -c "dotnet publish -c Release -o out; ./out/app"
