#!/bin/bash

mkdir -p .volumes
if [[ -n "${SUDO_UID}" ]]; then
  chown "${SUDO_UID}:${SUDO_GID}" .volumes
fi

docker run \
	--rm \
	--volume "$(pwd)"/src:/app/src:ro \
	--volume "$(pwd)"/package.json:/app/package.json:ro \
	--volume "$(pwd)"/tsconfig.json:/app/tsconfig.json:ro \
	--volume "$(pwd)"/.volumes/node_modules:/app/node_modules \
	--workdir /app \
	node:18-alpine \
	sh -c "npm install &>/dev/null ; npx tsc --outDir dist; node dist/main.js"
