#!/bin/sh

directory="/data"
specfile="test.spec"

chown root:root ${directory}/${specfile}
mkdir -p ${directory}/rpmbuild/{RPMS,BUILSD}
rpmbuild --define '_topdir /data/rpmbuild' /data/test.spec
