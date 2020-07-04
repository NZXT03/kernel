#!/bin/bash

mkdir /root/project/android-kernel-xiaomi-santoni-4.9/clang
wget https://android.googlesource.com/platform/prebuilts/clang/host/linux-x86/+archive/b8b61fff8660c2f7262939b7cb9dde7de38df133/clang-r365631c2.tar.gz
tar xzvf clang-r365631c2.tar.gz -C /root/project/android-kernel-xiaomi-santoni-4.9/clang

apt update -y && sudo apt upgrade -y
apt-get install --no-install-recommends -y \
 autoconf \
 autogen \
 automake \
 autotools-dev \
 bc \
 binutils \
 binutils-aarch64-linux-gnu \
 binutils-arm-linux-gnueabi \
 bison \
 bzip2 \
 ca-certificates \
 coreutils \
 cmake \
 curl \
 expect \
 flex \
 g++ \
 gawk \
 gcc \
 git \
 gnupg \
 gperf \
 help2man \
 lftp \
 libc6-dev \
 libelf-dev \
 libgomp1-* \
 liblz4-tool \
 libncurses5-dev \
 libssl-dev \
 libstdc++6 \
 libtool \
 libtool-bin \
 m4 \
 make \
 nano \
 openjdk-8-jdk \
 openssh-client \
 openssl \
 ovmf \
 patch \
 pigz \
 python3 \
 python \
 rsync \
 shtool \
 subversion \
 tar \
 texinfo \
 tzdata \
 u-boot-tools \
 unzip \
 wget \
 xz-utils \
 zip \
 zlib1g-dev \
 zstd
