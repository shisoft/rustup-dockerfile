FROM ubuntu

RUN apt-get update && \
    apt-get install curl git build-essential \ 
                    llvm valgrind binutils-dev \
                    libiberty-dev libpopt-dev sudo -y && \ 
    apt-get autoremove && \
    apt-get clean
ADD . .
RUN bash setup.sh
RUN bash install-pref.sh
USER rust
RUN curl https://sh.rustup.rs -sSf | sh -s -- --default-toolchain nightly -y