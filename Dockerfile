FROM ubuntu:14.04

RUN apt-get update
RUN apt-get install -y git
RUN apt-get install -y python-pip
RUN pip install django

ARG SRC /usr/share/src
RUN mkdir -p $SRC
WORKDIR $SRC

CMD ["sh build.sh"]
