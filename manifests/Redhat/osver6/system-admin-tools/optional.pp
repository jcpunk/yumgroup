class yumgroup::Redhat::osver6::system-admin-tools::optional {

  if $::osfamily == 'RedHat' and $::operatingsystem == 'Fedora' {
    fail('This module has not been verified under Fedora.')
  } elsif $::osfamily != 'RedHat' {
    fail('This module has not been verified under an osfamily other than RedHat')
  }

  if $::operatingsystemmajrelease != "6" {
    fail("This module is for 6 not $::operatingsystemmajrelease")
  }
  ensure_packages(["conman", "crypto-utils", "dtach", "expect", "hardlink", "lshw", "lsscsi", "mc", "mgetty", "pexpect", "rdist", "rrdtool", "screen", "scrub", "symlinks", "tree", "vlock", "xdelta"])

}
