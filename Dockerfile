<<<<<<< HEAD
FROM arm32v7/alpine
=======
FROM arm32v7/alpine:latest
>>>>>>> becfe743e87fb8530adf832a63cebfc76d7d3aaf
LABEL maintainer="Pablo Gómez <pblgomez@gmail.com>"

RUN apk upgrade -U
RUN apk add \
  py3-pip \
  ffmpeg
RUN pip3 install --upgrade pip
RUN pip3 install youtube-dl

COPY ./youtube-dl.conf /etc/youtube-dl.conf

WORKDIR /media

ENTRYPOINT ["youtube-dl"]
