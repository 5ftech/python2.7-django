FROM daocloud.io/python:2.7.8

RUN apt-get update
RUN apt-get install -y wget python-pygame
RUN mkdir -p /usr/share/sdl/tmp
WORKDIR /usr/share/sdl/tmp
RUN wget 'http://www.libsdl.org/release/SDL-1.2.15.tar.gz'
RUN tar -xf SDL-1.2.15.tar.gz
cd SDL-1.2.15
./configure --prefix=/usr/share/sdl
make
make install


