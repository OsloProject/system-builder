cd $TEMP_PATH/src/linux-kernel
make mrproper
make defconfig
make -j $(nproc)
cd -
