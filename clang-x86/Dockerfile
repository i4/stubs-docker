FROM ubuntu:jammy

LABEL maintainer="i4stubs@lists.cs.fau.de"

ENV DEBIAN_FRONTEND noninteractive
ENV ARCH x86
ENV CC clang-11
ENV CXX clang++-11

LABEL org.label-schema.schema-version="1.0"
LABEL org.label-schema.name="stubs/clang-x86"
LABEL org.label-schema.description="Build x86 StuBS with LLVM/Clang (11-14)"
LABEL org.label-schema.url="https://sys.cs.fau.de/lehre/ws/bs/"
LABEL org.label-schema.vcs-url="https://github.com/i4/stubs-docker"
LABEL org.label-schema.vendor="Friedrich-Alexander-Universität Erlangen-Nürnberg / Lehrstuhl für Informatik 4"

RUN apt-get update \
 && apt-get install -y apt-transport-https ca-certificates \
                       build-essential nasm file clang-tidy \
                       clang-11 lld-11 \
                       clang-12 lld-12 \
                       clang-13 lld-13 \
                       clang-14 lld-14 \
                       gcc-multilib g++-multilib libc6-dev-i386 lib32stdc++6 \
 && update-alternatives --install /usr/bin/cc cc /usr/bin/clang-11 100 \
 && update-alternatives --install /usr/bin/c++ c++ /usr/bin/clang++-11 100
