#!/bin/bash
docker run -d \
	--name api-v1 \
	-v $(pwd)/db.json:/db.json \
	-p 127.0.0.1:3000:3000 \
	williamyeh/json-server /db.json
