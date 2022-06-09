FROM ubuntu:focal

LABEL maintainer="i4stubs@lists.cs.fau.de"

ENV DEBIAN_FRONTEND noninteractive

LABEL org.label-schema.schema-version="1.0"
LABEL org.label-schema.name="stubs/doxygen"
LABEL org.label-schema.description="Generate StuBS documentation"
LABEL org.label-schema.url="https://sys.cs.fau.de/lehre/ws/bs/"
LABEL org.label-schema.vcs-url="https://github.com/i4/stubs-docker"
LABEL org.label-schema.vendor="Friedrich-Alexander-Universität Erlangen-Nürnberg / Lehrstuhl für Informatik 4"

RUN apt-get update \
 && apt-get install -y apt-transport-https ca-certificates \
                       build-essential doxygen graphviz make file
