FROM debian:buster

LABEL maintainer="i4stubs@lists.cs.fau.de"

ENV DEBIAN_FRONTEND noninteractive
ENV ARCH rv64
ENV PREFIX /opt/riscv/bin/riscv64-unknown-elf-
ENV CC gcc
ENV CXX g++

LABEL org.label-schema.schema-version="1.0"
LABEL org.label-schema.name="stubs/gcc-riscv"
LABEL org.label-schema.description="Build RISC-V StuBS with GCC"
LABEL org.label-schema.url="https://sys.cs.fau.de/lehre/ws/bs/"
LABEL org.label-schema.vcs-url="https://github.com/i4/stubs-docker"
LABEL org.label-schema.vendor="Friedrich-Alexander-Universität Erlangen-Nürnberg / Lehrstuhl für Informatik 4"

RUN apt-get update \
 && apt-get install -y apt-transport-https ca-certificates \
                       git file \
                       autoconf automake autotools-dev curl python3 libmpc-dev libmpfr-dev libgmp-dev gawk build-essential bison flex texinfo gperf libtool patchutils bc zlib1g-dev libexpat-dev \
 && mkdir -p /opt/riscv \
 && git clone https://github.com/riscv/riscv-gnu-toolchain \
 && cd riscv-gnu-toolchain \
 && git rm qemu \
 && rm -rf .git/modules/qemu \
 && git submodule update --init --recursive --jobs 8 \
 && ./configure --prefix=/opt/riscv --enable-multilib --with-cmodel=medany \
 && make \
 && make install \
 && find . -delete \
 && update-alternatives --install /usr/bin/c++ c++ /opt/riscv/bin/riscv64-unknown-elf-g++ 100
