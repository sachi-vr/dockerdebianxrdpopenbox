#!/bin/sh

docker container run -it --rm -p 13389:3389 minidebianxrdpopenbox
#docker container run -it --rm -p 13389:3389 -v `pwd`/WORKDIR:/WORKDIR minidebianxrdpopenbox
