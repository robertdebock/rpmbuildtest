FROM centos:latest
RUN yum -y update
RUN yum -y groupinstall "Development Tools"
