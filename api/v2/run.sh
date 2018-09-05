#!/bin/bash
docker run -d \
	-p 127.0.0.1:3001:3000 \
	-v $(pwd)/db.json:/db.json \
	williamyeh/json-server http://jsonplaceholder.typicode.com/db
