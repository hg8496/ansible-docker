FROM alpine:3.4

RUN apk add --no-cache python ca-certificates openssh-client
RUN apk add --no-cache --virtual build-dependencies python-dev py-pip gcc musl-dev libffi-dev openssl-dev \
 && pip install --upgrade pip \
 && pip install ansible \
 && apk del build-dependencies \
 && rm -r ~/.cache/pip