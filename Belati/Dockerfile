FROM debian:stretch-slim
LABEL MAINTAINER "Chandrapal <bnchandrapal@protonmail.com>"

RUN cd /home \
    && apt-get update \
    && apt-get install -y git python python-pip nmap \
    && git clone https://github.com/aancw/Belati.git \
    && cd Belati \
    && git submodule update --init --recursive --remote \
    && apt-get remove -y --purge python-bs4 python-idna python-chardet \
    && apt-get -y autoremove \
    && pip install -r requirements.txt

WORKDIR /home/Belati

EXPOSE 8000
