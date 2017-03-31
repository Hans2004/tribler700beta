# How to use this Dockerfile
# Build with: docker build --rm -t triblerx11 .
# 
#
# docker run -ti  --net=host \
#                 --env="DISPLAY" \
#                 -v $HOME/Tribler/Downloads:/root/Downloads \
#                 -v $HOME/.Tribler:/root/.Tribler \
#                 --volume="$HOME/.Xauthority:/root/.Xauthority:rw" \
#                 --name "tribler660x11" \
#                 pipo2004/tribler660x11 /usr/bin/tribler

# 
# After quitting the container, it can be restarted with: docker restart tribler660x11
#
#

# Start with Ubuntu base image
FROM ubuntu:16.04
MAINTAINER Hans de Jong <xxx@xxx.com>

RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y \
  wget \
  gdebi
  
RUN wget https://github.com/Tribler/tribler/releases/download/v7.0.0-beta/tribler_7.0.0-beta_all.deb
RUN gdebi --n tribler_7.0.0-beta_all.deb

CMD ["/usr/bin/tribler"]
