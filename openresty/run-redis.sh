#!/bin/bash
docker run -d \
	--name redis \
	--restart always \
	-p 127.0.0.1:6379:6379 \
	redis
