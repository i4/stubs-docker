FROM ubuntu:jammy

LABEL maintainer="i4stubs@lists.cs.fau.de"

ENV DEBIAN_FRONTEND noninteractive
ENV ARCH x64
ENV CC gcc-10
ENV CXX g++-10

LABEL org.label-schema.schema-version="1.0"
LABEL org.label-schema.name="stubs/gcc-x64"
LABEL org.label-schema.description="Build x64 StuBS with GCC (9-12)"
LABEL org.label-schema.url="https://sys.cs.fau.de/lehre/ws/bs/"
LABEL org.label-schema.vcs-url="https://github.com/i4/stubs-docker"
LABEL org.label-schema.vendor="Friedrich-Alexander-Universität Erlangen-Nürnberg / Lehrstuhl für Informatik 4"

RUN apt-get update \
 && apt-get install -y apt-transport-https ca-certificates \
                       build-essential nasm file \
                       gcc-9 g++-9 \
                       gcc-10 g++-10 \
                       gcc-11 g++-11 \
                       gcc-12 g++-12 \
 && update-alternatives --install /usr/bin/cc cc /usr/bin/gcc-10 100 \
 && update-alternatives --install /usr/bin/c++ c++ /usr/bin/g++-10 100
