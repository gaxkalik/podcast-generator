FROM ubuntu:latest

RUN apt update && apt-get install -y \
    python3.10 \
    python3-pip \

RUN pip3 install PyYAML

COPY feed.py /usr/bin/feed.py

COPY endpoint.sh /endpoint.sh

ENTRYPOINT [ "/entrypoint.sh" ]