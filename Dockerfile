FROM centos:latest
RUN yum -y update
RUN yum -y groupinstall "Development Tools"
RUN mkdir -p RPMBUILD/{SPECS,RPMS,BUILD,SPECS,BUILDROOT}
RUN ls -l
RUN rpmbuild --define '_topdir RPMBUILD' -ba test.spec
