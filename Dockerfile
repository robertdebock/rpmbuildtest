FROM centos:latest
RUN yum -y update
RUN yum -y groupinstall "Development Tools"
RUN mkdir -p RPMBUILD/{SPECS,RPMS,BUILD,BUILDROOT}
RUN rpmbuild --define '_topdir RPMBUILD' -ba test.spec
