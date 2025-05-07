FROM rust:latest AS builder
WORKDIR /usr/src/app

ADD Cargo.lock Cargo.toml ./
ADD src/ ./src

RUN cargo build --release

ENV PORT=8080

CMD ["/usr/src/app/target/release/task1"]
