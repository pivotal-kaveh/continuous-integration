#!/usr/bin/env bash
set -e
dnf install -y dnf-plugins-core \
	&& dnf config-manager -y --add-repo=http://negativo17.org/repos/fedora-nvidia.repo \
	&& dnf install -y curl clang make cmake git \
			openblas-static openblas-openmp openblas-devel \
			openssl-static openssl-libs openssl-devel \
			capnproto capnproto-libs capnproto-devel \
			cuda-cudnn \
			cuda-cudnn-devel \
			cuda \
			cuda-devel \
			cuda-cublas \
			cuda-cublas-devel \
			cuda-cudart \
			cuda-cudart-devel \
			nvidia-driver-cuda

#nvidia-driver-cuda provides nvidia-smi, which is helpful for debugging

