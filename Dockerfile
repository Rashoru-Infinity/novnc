FROM debian:bullseye-20230202-slim

LABEL maintainer "rashoru-infinity <65536toaru@gmail.com>"

RUN apt-get update \
    && apt-get install -y --no-install-recommends novnc \
    python3-websockify \
    && rm -rf /var/lib/apt/lists/* \
    /var/cache/apt/archives/*