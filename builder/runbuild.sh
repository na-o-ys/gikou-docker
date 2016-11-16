#!/bin/sh
cd `dirname $0`
docker run -it --rm -v $PWD:/app -w /app gcc:6.2 sh build.sh
