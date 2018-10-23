FROM ubuntu

RUN apt-get update && apt-get install curl git build-essential llvm -y --install-suggests && apt-get autoremove && apt-get clean
ADD . .
RUN bash setup.sh
USER rust
RUN curl https://sh.rustup.rs -sSf | sh -s -- --default-toolchain nightly -y