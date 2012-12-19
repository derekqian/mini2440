# http://code.google.com/p/friendlyarm/wiki/Linux_Tutorial

git clone git://repo.or.cz/qemu/mini2440.git qemu
cd qemu
./configure --target-list=arm-softmmu
make -j4
cd ..

sudo add-apt-repository ppa:linaro-maintainers/toolchain
sudo apt-get update
sudo apt-get install gcc-arm-linux-gnueabi g++-arm-linux-gnueabi
#sudo apt-get install gcc-arm-linux-gnueabi

git clone git://repo.or.cz/u-boot-openmoko/mini2440.git uboot
cd uboot
#Open Makefile, change CROSS_COMPILE to appropriate value.
make mini2440_config
make -j4



