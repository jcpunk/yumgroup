class yumgroup::Redhat::osver7::development::optional {

  if $::osfamily == 'RedHat' and $::operatingsystem == 'Fedora' {
    fail('This module has not been verified under Fedora.')
  } elsif $::osfamily != 'RedHat' {
    fail('This module has not been verified under an osfamily other than RedHat')
  }

  if $::operatingsystemmajrelease != "7" {
    fail("This module is for 7 not $::operatingsystemmajrelease")
  }
  ensure_packages(["ant", "babel", "bzr", "chrpath", "cmake", "compat-gcc-44", "compat-gcc-44-c++", "cvs", "dejagnu", "ElectricFence", "expect", "gcc-gnat", "gcc-objc", "gcc-objc++", "imake", "javapackages-tools", "jpackage-utils", "ksc", "libstdc++-docs", "mercurial", "mod_dav_svn", "nasm", "perltidy", "python-docs", "rpmdevtools", "rpmlint", "systemtap-sdt-devel", "systemtap-server"])

}
