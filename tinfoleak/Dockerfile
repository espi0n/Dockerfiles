FROM debian:stretch-slim
LABEL MAINTAINER "Chandrapal <bnchandrapal@protonmail.com>"

RUN cd /home \
    && apt-get update \
    && apt-get install -y git python python-pip build-essential python-openssl python-pyexiv2 \
    && git clone https://github.com/espi0n/tinfoleak \
    && cd tinfoleak \
    && pip install -r requirements.txt

WORKDIR /home/tinfoleak

EXPOSE 8000

COPY tinfoleak.conf /home/tinfoleak/tinfoleak.conf

CMD ["python", "-m", "SimpleHTTPServer", "8000"]

ENTRYPOINT ["python", "tinfoleak.py"]
