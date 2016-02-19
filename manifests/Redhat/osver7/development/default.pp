class yumgroup::Redhat::osver7::development::default {

  if $::osfamily == 'RedHat' and $::operatingsystem == 'Fedora' {
    fail('This module has not been verified under Fedora.')
  } elsif $::osfamily != 'RedHat' {
    fail('This module has not been verified under an osfamily other than RedHat')
  }

  if $::operatingsystemmajrelease != "7" {
    fail("This module is for 7 not $::operatingsystemmajrelease")
  }
  ensure_packages(["byacc", "cscope", "ctags", "diffstat", "doxygen", "elfutils", "gcc-gfortran", "git", "indent", "intltool", "patchutils", "rcs", "subversion", "swig", "systemtap"])

}
