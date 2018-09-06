#!/bin/bash
docker run -d \
		   --name proxy \
		   --restart always \
		   --net host \
		   -v $(pwd)/nginx.conf:/usr/local/openresty/nginx/conf/nginx.conf \
		   -v $(pwd)/conf.d:/etc/nginx/conf.d \
		   -v $(pwd)/lua:/app \
		   openresty/openresty:stretch
