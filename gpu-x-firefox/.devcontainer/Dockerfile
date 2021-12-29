# See here for image contents: https://github.com/microsoft/vscode-dev-containers/tree/v0.209.6/containers/ubuntu/.devcontainer/base.Dockerfile

# [Choice] Ubuntu version (use hirsuite or bionic on local arm64/Apple Silicon): hirsute, focal, bionic
ARG VARIANT="focal"
FROM mcr.microsoft.com/vscode/devcontainers/base:0-${VARIANT}

RUN distribution=$(. /etc/os-release;echo $ID$VERSION_ID) && \
     curl -s -L https://nvidia.github.io/nvidia-docker/gpgkey | sudo apt-key add - && \
     curl -s -L https://nvidia.github.io/nvidia-docker/$distribution/nvidia-docker.list | sudo tee /etc/apt/sources.list.d/nvidia-docker.list

RUN apt-get update && export DEBIAN_FRONTEND=noninteractive \
     && apt-get -y install --no-install-recommends nvidia-docker2 \ firefox \
     libglfw3 libegl1 libpci3