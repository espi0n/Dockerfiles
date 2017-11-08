FROM debian:stretch-slim
LABEL MAINTAINER "Chandrapal <bnchandrapal@protonmail.com>"

RUN cd /home \
    && apt-get update \
    && apt-get install -y git python python-pip \
    && git clone https://github.com/x0rz/tweets_analyzer \
    && cd tweets_analyzer \
    && pip install -r requirements.txt \
    && rm secrets.py

WORKDIR /home/tweets_analyzer

COPY secrets.py /home/tweets_analyzer/secrets.py

ENTRYPOINT ["python", "tweets_analyzer.py"]

CMD ["-h"]
