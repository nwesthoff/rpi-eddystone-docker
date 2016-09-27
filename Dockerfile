FROM resin/rpi-raspbian:jessie-20160831

MAINTAINER Matias Schertel <mschertel@gmail.com>

# Environment
ENV DEBIAN_FRONTEND=noninteractive

# Upgrade system
RUN apt-get update && apt-get upgrade -y

# Install bluetooth
RUN apt-get -y install build-essential bluez bluez-tools

# Install PyBeacon
RUN apt-get -y install python3 python3-pip && pip3 install PyBeacon

# Clean installation files
RUN apt-get autoremove -y && apt-get autoclean -y && apt-get clean -y
# Remove unecessary files
RUN rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

CMD ["bash"]
