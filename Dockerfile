FROM ubuntu:trusty
MAINTAINER Benedikt Lang <mail@blang.io>
ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update -q
RUN apt-get install -qy texlive-full
RUN apt-get install -qy python-pygments
RUN apt-get install -qy gnuplot
RUN apt-get install -qy make
RUN apt-get install -qy biber
RUN apt-get install -qy inkscape

WORKDIR /data
VOLUME ["/data"]
