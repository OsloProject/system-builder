echo "  - Downloading Kernel"
mkdir -p $TEMP_PATH/dl
mkdir -p $TEMP_PATH/src
curl https://cdn.kernel.org/pub/linux/kernel/v4.x/linux-4.14.38.tar.xz -o $TEMP_PATH/dl/kernel.tar.xz

echo "  - Extracting"
tar -xf $TEMP_PATH/dl/kernel.tar.xz -C $TEMP_PATH/src/
mv $TEMP_PATH/src/linux-* $TEMP_PATH/src/linux-kernel
