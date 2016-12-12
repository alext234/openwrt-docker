FROM ubuntu:16.04

RUN apt-get update &&\
    apt-get install -y git-core subversion build-essential gcc-multilib make\
                       libncurses5-dev zlib1g-dev gawk flex gettext wget unzip python libssl-dev &&\
    apt-get clean
RUN useradd -ms /bin/bash openwrt
USER openwrt
WORKDIR /home/openwrt
