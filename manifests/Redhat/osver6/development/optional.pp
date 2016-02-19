class yumgroup::Redhat::osver6::development::optional {

  if $::osfamily == 'RedHat' and $::operatingsystem == 'Fedora' {
    fail('This module has not been verified under Fedora.')
  } elsif $::osfamily != 'RedHat' {
    fail('This module has not been verified under an osfamily other than RedHat')
  }

  if $::operatingsystemmajrelease != "6" {
    fail("This module is for 6 not $::operatingsystemmajrelease")
  }
  ensure_packages(["ant", "babel", "bzr", "chrpath", "cmake", "compat-gcc-34", "compat-gcc-34-c++", "compat-gcc-34-g77", "cvs-inetd", "dejagnu", "ElectricFence", "expect", "gcc-gnat", "gcc-java", "gcc-objc", "gcc-objc++", "imake", "jpackage-utils", "kdewebdev", "ksc", "libstdc++-docs", "mercurial", "mod_dav_svn", "nasm", "perltidy", "python-docs", "python-requests", "python-six", "PyYAML", "rpmdevtools", "rpmlint", "systemtap-sdt-devel", "systemtap-server"])

}
