# http://code.google.com/p/friendlyarm/wiki/Linux_Tutorial

#####################################################
# build qemu
git clone git://repo.or.cz/qemu/mini2440.git qemu
cd qemu
./configure --target-list=arm-softmmu
make -j4
cd ..

#####################################################
# build uboot

# doesn't work for uboot
#sudo add-apt-repository ppa:linaro-maintainers/toolchain
#sudo apt-get update
#sudo apt-get install gcc-arm-linux-gnueabi g++-arm-linux-gnueabi

#mkdir -p ~/dev/toolchain
mkdir toolchain
cd toolchain
wget http://files.chumby.com/toolchain/arm-2008q3-72-arm-none-linux-gnueabi-i686-pc-linux-gnu.tar.bz2
tar xjvf arm-2008q3-72-arm-none-linux-gnueabi-i686-pc-linux-gnu.tar.bz2
export PATH=/home/derek/mini2440/toolchain/arm-2008q3/bin:$PATH

git clone git://repo.or.cz/u-boot-openmoko/mini2440.git uboot
cd uboot
#Open Makefile, change CROSS_COMPILE to appropriate value.
#make mini2440_config
make mini2440_config CROSS_COMPILE=arm-none-linux-gnueabi-
#make -j4
make -j4 CROSS_COMPILE=arm-none-linux-gnueabi-






