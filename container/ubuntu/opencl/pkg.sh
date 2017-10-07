#!/usr/bin/env bash
set -e

apt-get -y --no-install-recommends console-data

loadkeys us || echo "loadkeys failed {#?}"
setxkbmap us || echo "setxkbmap failed {#?}"

apt-get -y --no-install-recommends install \
	curl wget git \
	capnproto \
	pkg-config \
	nvidia-opencl-icd-375 \
	nvidia-libopencl1-375 \
	nvidia-375-dev
