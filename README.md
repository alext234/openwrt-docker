# Docker image for openwrt buildroot

## Build the image 

```
git clone https://github.com/alext234/openwrt-docker.git
cd openwrt-docker
sudo docker build -t openwrt-build-env  .
```


## Clone openwrt

```
git clone https://github.com/openwrt/openwrt.git
```

## Run bash in container

```
sudo docker run -t -i --net host -v ~/openwrt:/home/openwrt/openwrt open-wrt-build-env bash
```

## Build openwrt 
(see https://wiki.openwrt.org/doc/howto/build for more details) 

```
cd openwrt
make menuconfig
make defconfig
make V=s
```
