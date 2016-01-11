FROM zapster/latex
MAINTAINER Josef Eisl <zapster@zapster.cc>

USER root
RUN dnf -y update && dnf clean all
RUN dnf -y install \
  R \
  && dnf clean all

RUN Rscript -e 'install.packages("ggplot2", repos="http://cran.rstudio.com/", clean=TRUE)'

USER docker
CMD ["bash"]
