##FROM python:2.7
# Our base image is Ubuntu 13.04
FROM stackbrew/ubuntu:latest
RUN apt-get update
RUN apt-get install -y python python-dev python-pip
ADD . /code
WORKDIR /code
RUN pip install -r requirements.txt
