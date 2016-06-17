FROM ubuntu:16.04

MAINTAINER lukess <luke.skywalker.sun@gmail.com>

ENV DEBIAN_FRONTEND noninteractive
ENV TERM xterm-256color
ENV PDBVER 0.9.3
ENV PGVER 9.5

COPY install/. /root/.
RUN /root/install.sh

COPY conf/pipelinedb.conf /root/.
RUN /root/prepare_test.sh

EXPOSE 5432

COPY init/init.sh /usr/bin/init.sh
CMD /usr/bin/init.sh
