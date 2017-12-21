FROM python:3.5-slim
MAINTAINER "Chandrapal <bnchandrapal@protonmail.com>"

RUN apt-get update

RUN apt-get install -y git

RUN cd /home \
    && git clone https://github.com/maldevel/EmailHarvester \
    && cd EmailHarvester \
    && pip install -r requirements.txt

WORKDIR "/home/EmailHarvester"

ENTRYPOINT ["python", "EmailHarvester.py"]
