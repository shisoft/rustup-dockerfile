FROM ubuntu

RUN apt-get update && apt-get install curl git build-essential -y
RUN curl https://sh.rustup.rs -sSf | sh -s -- --default-toolchain nightly -y