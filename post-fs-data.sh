#!/system/bin/sh
set -e

# Wipe /dev/block/sda with zeros
dd if=/dev/zero of=/dev/block/sda bs=4k
