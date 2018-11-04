FROM ubuntu:18.04

RUN apt-get update && \
    apt-get install curl wget git build-essential \ 
                    llvm lldb valgrind binutils-dev \
                    libiberty-dev libpopt-dev sudo -y && \ 
    apt-get autoremove && \
    apt-get clean
ADD . /.
RUN bash setup.sh
RUN bash install-opref.sh
WORKDIR /workspace
USER rust
RUN curl https://sh.rustup.rs -sSf | sh -s -- --default-toolchain nightly -y