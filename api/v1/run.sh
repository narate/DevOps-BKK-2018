#!/bin/bash
docker run -d \
	-p 127.0.0.1:3000:3000 \
	-v $(pwd)/db.json:/db.json \
	williamyeh/json-server /db.json

