FROM ubuntu:focal

LABEL maintainer="i4stubs@lists.cs.fau.de"

ENV ARCH x86
ENV CC clang-10
ENV CXX clang++-10

LABEL org.label-schema.schema-version="1.0"
LABEL org.label-schema.name="stubs/clang-x86"
LABEL org.label-schema.description="Build x86 StuBS with LLVM/Clang (7-10)"
LABEL org.label-schema.url="https://www4.cs.fau.de/Lehre/WS/V_BS/"
LABEL org.label-schema.vcs-url="https://github.com/i4/stubs-docker"
LABEL org.label-schema.vendor="Friedrich-Alexander-Universität Erlangen-Nürnberg / Lehrstuhl für Informatik 4"

RUN apt-get update \
 && apt-get install -y apt-transport-https ca-certificates \
                       build-essential nasm \
                       clang-7 clang-tidy-7 lld-7 \
                       clang-8 clang-tidy-8 lld-8 \
                       clang-9 clang-tidy-9 lld-9 \
                       clang-10 clang-tidy-10 lld-10 \
                       gcc-multilib g++-multilib libc6-dev-i386 lib32stdc++6 \
 && update-alternatives --install /usr/bin/cc cc /usr/bin/clang-10 100 \
 && update-alternatives --install /usr/bin/c++ c++ /usr/bin/clang++-10 100
