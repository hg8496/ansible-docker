FROM python:3

RUN apt-get update && apt-get install -y openssh-client sshpass unzip && rm -rf /var/lib/apt/lists/*
RUN pip install --upgrade pip \
 && pip install ansible \
 && rm -r ~/.cache/pip

WORKDIR /infra
