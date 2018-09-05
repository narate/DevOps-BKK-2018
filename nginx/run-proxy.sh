#!/bin/bash
docker run -d \
	--name proxy \
	--restart always \
	--net host \
	-v $(pwd)/nginx.conf:/etc/nginx/nginx.conf \
	-v $(pwd)/conf.d:/etc/nginx/conf.d \
	nginx
