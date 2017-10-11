#!/usr/bin/env bash
set -e
apt-get -y --no-install-recommends install \
	ca-certificates \
	curl wget git \
	capnproto \
	pkg-config \
	libopenblas-{dev,base} \
	nvidia-opencl-icd-375 \
	nvidia-libopencl1-375 \
	nvidia-375-dev \
	ocl-icd-opencl-dev
