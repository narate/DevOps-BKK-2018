#!/bin/bash
docker run -d \
	--restart always \
	--name cassandra \
	-v $(pwd)/cassandra_db:/var/lib/cassandra \
	-p 127.0.0.1:9042:9042 \
	cassandra
