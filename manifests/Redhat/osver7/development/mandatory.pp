class yumgroup::Redhat::osver7::development::mandatory {

  if $::osfamily == 'RedHat' and $::operatingsystem == 'Fedora' {
    fail('This module has not been verified under Fedora.')
  } elsif $::osfamily != 'RedHat' {
    fail('This module has not been verified under an osfamily other than RedHat')
  }

  if $::operatingsystemmajrelease != "7" {
    fail("This module is for 7 not $::operatingsystemmajrelease")
  }
  ensure_packages(["autoconf", "automake", "binutils", "bison", "flex", "gcc", "gcc-c++", "gettext", "libtool", "make", "patch", "pkgconfig", "redhat-rpm-config", "rpm-build", "rpm-sign"])

}
