#!/bin/bash

git config --global user.email "syaoma@yandex.com"
git config --global user.name "NZXT03"

cd /root/project/android_kernel_xiaomi_santoni-4.9
git fetch https://source.codeaurora.org/quic/la/kernel/msm-4.9/ LA.UM.8.6.2.r2-02400-89xx.0
git merge FETCH_HEAD
mkdir clang
git clone https://github.com/LineageOS/android_prebuilts_gcc_linux-x86_aarch64_aarch64-linux-android-4.9.git -b lineage-17.1 gcc-64 --depth=1
git clone https://github.com/LineageOS/android_prebuilts_gcc_linux-x86_arm_arm-linux-androideabi-4.9.git -b lineage-17.1 gcc-32 --depth=1
wget https://android.googlesource.com/platform/prebuilts/clang/host/linux-x86/+archive/b8b61fff8660c2f7262939b7cb9dde7de38df133/clang-r365631c2.tar.gz
tar xzvf clang-r365631c2.tar.gz -C clang


rm -rf out

make O=out clean && make O=out mrproper
make O=out ARCH=arm64 santoni_treble_defconfig

PATH="$(pwd)/clang/bin:$(pwd)/gcc-64/bin:$(pwd)/gcc-32/bin:${PATH}" \
make -j$(nproc --all) O=out \
                      ARCH=arm64 \
                      CC=clang \
                      CLANG_TRIPLE=aarch64-linux-gnu- \
                      CROSS_COMPILE=aarch64-linux-android- \
                      CROSS_COMPILE_ARM32=arm-linux-androideabi-

#make -j$(nproc --all) O=out \
                      #ARCH=arm64 \
                      #CROSS_COMPILE="$(pwd)/gcc-64/bin/aarch64-linux-android-" \
                      #CROSS_COMPILE_ARM32="$(pwd)/gcc-32/bin/arm-linux-androideabi-"
