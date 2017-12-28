FROM debian:stretch-slim
LABEL MAINTAINER "Chandrapal <bnchandrapal@protonmail.com>"

RUN cd /home \
    && apt-get update \
    && apt-get install -y git python python-pip python-setuptools libxml2-dev libxslt-dev lib32z1-dev --no-install-recommends \
    && git clone https://github.com/DataSploit/datasploit.git

WORKDIR /home/datasploit

RUN pip install wheel \
    && pip install -r requirements.txt

COPY config.py /home/datasploit/config.py

ENTRYPOINT ["python", "datasploit.py"]
