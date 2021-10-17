#!/bin/bash
echo "Building base"
docker build -t outboundspade48/docker-singleapp:base ./base/.
for f in ./*/Dockerfile; do
	fname=$(echo "$f" |cut -d/ -f2 )
	if [[ "$fname" != "base" ]]; then
		echo "Building $fname"
		docker build -t outboundspade48/docker-singleapp:$fname ./$fname/.
	fi
done
