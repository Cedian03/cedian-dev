FROM rust:latest

WORKDIR /app

RUN cargo install cargo-binstall
RUN yes | cargo binstall dioxus-cli

COPY . .

RUN dx build --release

EXPOSE 8080

CMD [ "dx", "serve", "--release" ]