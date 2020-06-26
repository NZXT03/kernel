#!/bin/bash

git clone https://github.com/NZXT03/AnyKernel3.git /root/project/android_kernel_xiaomi_santoni-4.9/Anykernel3

cp /root/project/android_kernel_xiaomi_santoni-4.9/out/arch/arm64/boot/Image.gz-dtb /root/project/android_kernel_xiaomi_santoni-4.9/Anykernel3/

cd /root/project/android_kernel_xiaomi_santoni-4.9/Anykernel3

zip -r9 UPDATE-AnyKernel3.zip * -x .git README.md *placeholder
