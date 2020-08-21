FROM balenalib/raspberrypi3-debian-python:latest

# Environment
ENV DEBIAN_FRONTEND=noninteractive

# Upgrade system
RUN apt-get update && apt-get upgrade -y

# Install bluetooth
RUN apt-get -y install build-essential bluez bluez-tools

# Install PyBeacon
RUN pip3 install PyBeacon

# Clean installation files
RUN apt-get autoremove -y && apt-get autoclean -y && apt-get clean -y
# Remove unecessary files
RUN rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

CMD ["bash"]
