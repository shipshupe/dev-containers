# See here for image contents: https://github.com/microsoft/vscode-dev-containers/tree/v0.209.6/containers/cpp/.devcontainer/base.Dockerfile

# [Choice] Debian / Ubuntu version (use Debian 11/9, Ubuntu 18.04/21.04 on local arm64/Apple Silicon): debian-11, debian-10, debian-9, ubuntu-21.04, ubuntu-20.04, ubuntu-18.04
ARG VARIANT="buster"
FROM mcr.microsoft.com/vscode/devcontainers/cpp:0-${VARIANT}


# Install build dependencies for Eaglemode
RUN apt-get update && export DEBIAN_FRONTEND=noninteractive \
     && apt-get -y install --no-install-recommends \
     libx11-dev libvlc-dev libjpeg-dev libgtk2.0-dev \ 
     librsvg2-dev libtiff-dev libwebp-dev libtiff5-dev \
     libpoppler-glib-dev libgs9 build-essential xterm

WORKDIR /home/vscode/src

RUN curl -L -o ./eaglemode.tar.bz2 http://downloads.sourceforge.net/eaglemode/eaglemode-0.95.1.tar.bz2 && \
     mkdir eaglemode && tar -xvjf ./eaglemode.tar.bz2 -C eaglemode --strip-components 1

WORKDIR eaglemode

RUN perl make.pl build continue=yes && perl make.pl install bin=yes

COPY --chown=vscode:vscode home* /home/vscode

RUN echo "alias enhance='eaglemode -visit ::FS::\$(echo \$PWD|sed \"s/\//::/g\")'" >> /home/vscode/.bashrc
