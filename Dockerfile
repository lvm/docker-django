FROM alpine:latest

ENV LIBRARY_PATH=/lib:/usr/lib

RUN apk --update add \
    build-base ca-certificates \
    jpeg-dev libffi-dev \
    python2 python-dev py-pip py-setuptools \
    zlib-dev \
    && pip install virtualenv

COPY ["requirements.pip", "/tmp/requirements.pip"]

WORKDIR /tmp

RUN virtualenv .env && source .env/bin/activate && pip install -r requirements.pip

EXPOSE 8000
