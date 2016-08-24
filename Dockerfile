FROM ubuntu:trusty
MAINTAINER Josef Eisl <zapster@zapster.cc>
ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update -q && apt-get install -qy \
  texlive \
  texlive-latex-extra \
  texlive-lang-german \
  python-pygments \
  gnuplot \
  make \
  biber \
  inkscape \
  latexmk \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/*

RUN useradd -m docker

WORKDIR /data
VOLUME ["/data"]
USER docker
CMD ["bash"]
