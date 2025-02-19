FROM ubuntu:latest

RUN apt-get update && apt-get install -y build-essential \
    python3.10 \
    python3-pip \
    git

RUN pip3 install --upgrade pip\
    pip3 install PyYAML==5.4.1

COPY feed.py /usr/bin/feed.py

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]