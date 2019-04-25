FROM debian:stretch-slim

RUN apt-get update
RUN apt-get install -y --no-install-recommends wine
# Cleanup 
RUN apt-get clean autoclean \
    && apt-get autoremove --yes \
    && rm -rf /var/lib/{apt,dpkg,cache,log}/ \
    rm -rf /var/lib/apt/lists/*
