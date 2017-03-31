#!/bin/bash

docker run -ti 	--net=host \
		--env="DISPLAY" \
		-v $HOME/Tribler/Downloads:/root/Downloads \
		-v $HOME/.Tribler:/root/.Tribler \
		--volume="$HOME/.Xauthority:/root/.Xauthority:rw" \
		--name "tribler700beta" \
		pipo2004/tribler700beta /usr/bin/tribler

