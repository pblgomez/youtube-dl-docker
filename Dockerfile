FROM alpine:linux/arm/v7
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
