#!/bin/bash
FROM espcigm/monal:latest
MAINTAINER Jean-Luc PLOIX

RUN apt-get update \
    && apt-get install -y \
    python-tk 

RUN pip install --user --no-cache-dir chem_gm
RUN rm -rf /var/lib/apt/lists/*

RUN mkdir ~/docker
RUN mkdir ~/docker/data

