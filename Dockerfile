FROM ubuntu:22.04
RUN apt-get update -y
RUN apt-get upgrade -y
RUN apt-get install -y \
    curl \
    cmake \
    libfontconfig1-dev \
    libxcursor-dev \
    libxinerama-dev \
    libx11-dev \
    x11-utils \
    pkg-config \
    build-essential \
    g++ \
    libcurl4-openssl-dev \
    libgtk2.0-dev \
    libwebkit2gtk-4.1-dev \
    x11-apps \
    libasound2-dev