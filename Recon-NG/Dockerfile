FROM python:2.7-slim
MAINTAINER "Chandrapal <bnchandrapal@protonmail.com>"

RUN apt-get update

RUN apt-get install -y git

RUN cd /home \
    && git clone https://bitbucket.org/LaNMaSteR53/recon-ng.git \
    && cd recon-ng \
    && pip install -r REQUIREMENTS

WORKDIR "/home/recon-ng"
