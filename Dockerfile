ARG STRETCH_VERSION=041518

FROM raspbian/stretch:${STRETCH_VERSION}

# Update image and get cmake
RUN apt-get update \
    && apt-get upgrade \
    && apt-get install -y \
        build-essential \
        cmake \
        git \
        wget \
        #for bluez
        bluez bluez-tools python-dev python-pip libglib2.0-dev libboost-python-dev libboost-thread-dev libbluetooth-dev \
        #wiringpi
        wiringpi