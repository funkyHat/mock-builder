FROM centos:centos7
MAINTAINER Matt Wheeler <m@funkyhat.org>

RUN yum update -y
RUN yum install -y epel-release deltarpm
RUN yum install -y mock

RUN useradd builder
RUN usermod -a -G mock builder

USER builder

RUN yum clean all
