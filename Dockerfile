FROM rust:latest

WORKDIR /usr/src/app
ADD . .

RUN cargo build --release

ENV PORT=8081
EXPOSE 8081
CMD ["./target/release/task1"]

