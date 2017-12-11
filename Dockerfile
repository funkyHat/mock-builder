FROM centos:centos7
MAINTAINER Matt Wheeler <m@funkyhat.org>

RUN yum install -y epel-release deltarpm
RUN yum install -y which mock

ADD mock.cfg /root/.config/

RUN yum clean all
