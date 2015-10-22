FROM centos:latest
VOLUME ["/data"]
#RUN yum -y update
#RUN yum -y groupinstall "Development Tools"
#RUN mkdir -p RPMBUILD/{SPECS,RPMS,BUILD,SPECS,BUILDROOT}
#RUN ls -la /data
#RUN rpmbuild --define '_topdir RPMBUILD' -ba test.spec
