FROM debian:stretch-slim
LABEL MAINTAINER "Chandrapal <bnchandrapal@protonmail.com>"

RUN cd /home \
    && apt-get update \
    && apt-get install -y git python python-pip build-essential python-openssl python-pyexiv2 --no-install-recommends \
    && pip install wheel \
    && git clone https://github.com/espi0n/tinfoleak \
    && cd tinfoleak \
    && pip install -r requirements.txt \
    && touch Output_Reports/tinfoleak.html

WORKDIR /home/tinfoleak

EXPOSE 8000

COPY tinfoleak.conf /home/tinfoleak/tinfoleak.conf

COPY entrypoint.sh /home/tinfoleak/entrypoint.sh

COPY index.html /home/tinfoleak/index.html

ENTRYPOINT ["bash", "entrypoint.sh"]
