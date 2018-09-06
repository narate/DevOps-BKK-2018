#!/bin/bash
docker run -d \
	--name api-v2 \
	-p 127.0.0.1:3001:3000 \
	williamyeh/json-server http://jsonplaceholder.typicode.com/db
