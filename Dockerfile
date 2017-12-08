FROM centos:centos7
MAINTAINER Matt Wheeler <m@funkyhat.org>

RUN yum install -y epel-release deltarpm
RUN yum install -y which mock

RUN useradd builder
RUN usermod -a -G mock builder

RUN mkdir -p /home/builder/.config
ADD mock.cfg /home/builder/.config/
RUN chown -R builder /home/builder/.config

USER builder

RUN yum clean all
