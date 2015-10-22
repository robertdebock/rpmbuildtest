# rpmbuildtest
A repository to test rpmbuilding with Travis CI using a docker-host.

This repository is configured to host an RPM SPEC file, which triggers a (Travis CI) build when changed.

To use this code for your own RPM: follow these steps:
1. Clone this project into your own. Each RPM should have it's own repository.
2. Add your own SPEC file. You can delete test.spec which serves as an example.
3. Add your software sources (.tar.gz/.zip/etc) to rpmbuild/SOURCES.
4. Modify .travis.yml's -s option to refer to your spec file.

That should trigger new builds.

TODO:
RPM's are now built, but the resulting RPM's are not saved or pushed anywhere. This should be added to the rpmbuild.sh script.
