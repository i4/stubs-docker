FROM ubuntu:hirsute

LABEL maintainer="i4stubs@lists.cs.fau.de"

ENV DEBIAN_FRONTEND noninteractive
ENV ARCH x86
ENV CC gcc-10
ENV CXX g++-10

LABEL org.label-schema.schema-version="1.0"
LABEL org.label-schema.name="stubs/gcc-x86"
LABEL org.label-schema.description="Build x86 StuBS with GCC (7-11)"
LABEL org.label-schema.url="https://www4.cs.fau.de/Lehre/WS/V_BS/"
LABEL org.label-schema.vcs-url="https://github.com/i4/stubs-docker"
LABEL org.label-schema.vendor="Friedrich-Alexander-Universität Erlangen-Nürnberg / Lehrstuhl für Informatik 4"

RUN apt-get update \
 && apt-get install -y apt-transport-https ca-certificates \
                       build-essential nasm file \
                       gcc-7 g++-7 lib32gcc-7-dev lib32stdc++-7-dev \
                       gcc-8 g++-8 lib32gcc-8-dev lib32stdc++-8-dev \
                       gcc-9 g++-9 lib32gcc-9-dev lib32stdc++-9-dev \
                       gcc-10 g++-10 lib32gcc-10-dev lib32stdc++-10-dev \
                       gcc-11 g++-11 lib32gcc-11-dev lib32stdc++-11-dev \
                       gcc-multilib g++-multilib libc6-dev-i386 \
 && update-alternatives --install /usr/bin/cc cc /usr/bin/gcc-10 100 \
 && update-alternatives --install /usr/bin/c++ c++ /usr/bin/g++-10 100
