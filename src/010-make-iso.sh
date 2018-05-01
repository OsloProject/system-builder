dd if=/dev/zero of="$IMAGE_NAME" iflag=fullblock bs=1M count=$IMAGE_SIZE
mkfs.$IMAGE_FS "$IMAGE_NAME"
