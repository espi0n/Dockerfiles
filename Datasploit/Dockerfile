FROM debian:stretch-slim
LABEL MAINTAINER "Chandrapal <bnchandrapal@protonmail.com>"

RUN cd /home \
    && apt-get update \
    && apt-get install -y git python python-pip libxml2-dev libxslt-dev lib32z1-dev \
    && git clone https://github.com/DataSploit/datasploit.git \
    && cd datasploit \
    && pip install -r requirements.txt

WORKDIR /home/datasploit