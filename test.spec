Summary: Test rpm
Name: test
Version: 0.1
Release: 1
URL: http://meinit.nl
License: Apache License
Group: Applications/Internet
BuildRoot: %{_tmppath}/%{name}-root
Requires: bash
BuildArch: noarch

%description
A test shell script.

%prep
%{__cat} <<'EOF' > %{name}.txt
Hello world!
EOF

%install
rm -rf ${RPM_BUILD_ROOT}
mkdir -p ${RPM_BUILD_ROOT}/etc/
install -m 644 %{name}.txt ${RPM_BUILD_ROOT}/etc/

%clean
rm -rf ${RPM_BUILD_ROOT}

%files
%defattr(-,root,root)
%attr(755,root,root) /etc/%{name}.txt

%changelog
* Wed Oct 21 2015 Robert de Bock <robert@meinit.nl>
- Initial commit.
