FROM alpine:latest
ENV LIBRARY_PATH=/lib:/usr/lib
EXPOSE 8000
COPY ["requirements.pip", "/tmp/requirements.pip"]
WORKDIR /tmp

RUN apk --update add \
    build-base ca-certificates \
    jpeg-dev libffi-dev openssl-dev \
    python2 python-dev py-pip py-setuptools \
    zlib-dev \
    && rm -rf /var/cache/apk/* \
    && pip install virtualenv \
    && virtualenv .env && source .env/bin/activate && pip install -r requirements.pip \
    && apk del build-base jpeg-dev libffi-dev openssl-dev python-dev zlib-dev
