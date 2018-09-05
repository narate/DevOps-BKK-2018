#!/bin/bash
docker run -it -d \
	--restart always \
	--net host \
	--name proxy \
	-e "KONG_DATABASE=cassandra" \
	-e "KONG_CASSANDRA_CONTACT_POINTS=127.0.0.1" \
	-e "KONG_PROXY_ACCESS_LOG=/dev/stdout" \
	-e "KONG_ADMIN_ACCESS_LOG=/dev/stdout" \
	-e "KONG_PROXY_ERROR_LOG=/dev/stderr" \
	-e "KONG_ADMIN_ERROR_LOG=/dev/stderr" \
	-e "KONG_PROXY_LISTEN=0.0.0.0:80" \
	-e "KONG_PROXY_LISTEN_SSL=0.0.0.0:443" \
	-e "KONG_ADMIN_LISTEN=127.0.0.1:8001" \
	-e "KONG_ADMIN_LISTEN_SSL=127.0.0.1:8444" \
	kong


