FROM ubuntu:latest

RUN apt update && apt install -y golang-go

RUN useradd -m nonroot

COPY output/backend /home/nonroot/

USER nonroot

EXPOSE 8091

ENTRYPOINT /bin/sh -c /home/nonroot/backend


