FROM ubuntu:focal

LABEL maintainer="i4stubs@lists.cs.fau.de"

ENV DEBIAN_FRONTEND noninteractive
ENV ARCH x86
ENV CC clang-10
ENV CXX clang++-10

LABEL org.label-schema.schema-version="1.0"
LABEL org.label-schema.name="stubs/clang-old-x86"
LABEL org.label-schema.description="Build x86 StuBS with LLVM/Clang (7-10)"
LABEL org.label-schema.url="https://sys.cs.fau.de/lehre/ws/bs/"
LABEL org.label-schema.vcs-url="https://github.com/i4/stubs-docker"
LABEL org.label-schema.vendor="Friedrich-Alexander-Universität Erlangen-Nürnberg / Lehrstuhl für Informatik 4"

RUN apt-get update \
 && apt-get install -y apt-transport-https ca-certificates \
                       build-essential nasm file clang-tidy \
                       clang-7 lld-7 \
                       clang-8 lld-8 \
                       clang-9 lld-9 \
                       clang-10 lld-10 \
                       gcc-multilib g++-multilib libc6-dev-i386 lib32stdc++6 \
 && update-alternatives --install /usr/bin/cc cc /usr/bin/clang-10 100 \
 && update-alternatives --install /usr/bin/c++ c++ /usr/bin/clang++-10 100
