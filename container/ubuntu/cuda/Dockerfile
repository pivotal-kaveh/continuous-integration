FROM ubuntu:latest
MAINTAINER Bernhard Schuster "bernhard@spearow.io"

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update -y

COPY ubuntu/cuda/pkg.sh /tmp/pkg.sh

RUN chmod +x /tmp/pkg.sh && \
	/tmp/pkg.sh && \
	apt-get clean

RUN curl https://sh.rustup.rs -sSf | sh -s -- --default-toolchain stable -y

ENV PATH=/root/.cargo/bin:$PATH
ENV CMAKE_MAKE_PROGRAM=make

COPY escalate.sh /usr/local/bin/escalate

COPY ubuntu/cuda/prepare.sh /usr/local/bin/prepare

RUN chmod +x /usr/local/bin/*
