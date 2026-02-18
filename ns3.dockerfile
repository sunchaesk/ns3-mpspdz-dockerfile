FROM ubuntu:24.04
ENV DEBIAN_FRONTEND=noninteractive

MAINTAINER Sunchae Kim <sunchae.kim@mail.utoronto.ca>
LABEL description="ns3 MP-SPDZ"

RUN apt-get update && apt-get install -y --no-install-recommends \
    build-essential g++ cmake git python3 python3-pip \
    libssl-dev libsodium-dev libboost-dev libboost-thread-dev \
    automake libtool yasm \
    nlohmann-json3-dev \
    vim gdb \
    clang llvm sudo unzip jq tmux npm nodejs
    && rm -rf /var/lib/apt/lists/*


RUN npm install -g @anthropic-ai/claude-code

RUN git clone --depth 1 https://github.com/data61/MP-SPDZ.git
RUN git clone --depth 1 https://gitlab.com/nsnam/ns-3-dev.git
