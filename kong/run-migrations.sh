#!/bin/bash
docker run -it --rm \
		   --net host \
		   -e "KONG_DATABASE=cassandra" \
		   -e "KONG_CASSANDRA_CONTACT_POINTS=127.0.0.1" \
		   kong kong migrations up -vvv

