FROM debian:stretch-slim
LABEL MAINTAINER "Chandrapal <bnchandrapal@protonmail.com>"

RUN cd /home \
    && apt-get update \
    && apt-get install -y git python python-pip \
    && git clone https://github.com/mschwager/gitem.git \
    && cd gitem \
    && pip install -r requirements.txt \
    && python setup.py install

WORKDIR /home/gitem