# Docker image for openwrt buildroot

1. Build the image 

```
git clone https://github.com/alext234/openwrt-docker.git
cd openwrt-docker
sudo docker build -t openwrt-build-env  .
```


2. Clone openwrt

```
git clone https://github.com/openwrt/openwrt.git
```

3. Run bash in container

```
sudo docker run -t -i --net host -v ~/openwrt:/home/openwrt/openwrt open-wrt-build-env bash
```

4. Build openwrt 
(see https://wiki.openwrt.org/doc/howto/build for more details) 

```
cd openwrt
make menuconfig
make defconfig
make V=s
```
