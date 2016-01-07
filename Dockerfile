FROM fedora:22
MAINTAINER Josef Eisl <zapster@zapster.cc>

RUN dnf -y update && dnf clean all
RUN dnf -y install \
  texlive-scheme-small \
  texlive-collection-langgerman \
  python-pygments \
  gnuplot \
  make \
  biber \
  inkscape \
  latexmk \
  && dnf clean all

RUN useradd -m docker

WORKDIR /data
VOLUME ["/data"]
USER docker
CMD ["bash"]
