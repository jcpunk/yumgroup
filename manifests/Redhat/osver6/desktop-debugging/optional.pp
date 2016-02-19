class yumgroup::Redhat::osver6::desktop-debugging::optional {

  if $::osfamily == 'RedHat' and $::operatingsystem == 'Fedora' {
    fail('This module has not been verified under Fedora.')
  } elsif $::osfamily != 'RedHat' {
    fail('This module has not been verified under an osfamily other than RedHat')
  }

  if $::operatingsystemmajrelease != "6" {
    fail("This module is for 6 not $::operatingsystemmajrelease")
  }
  ensure_packages(["abrt-desktop", "abrt-gui", "bltk", "oprofile-gui", "pcp", "systemtap-grapher", "xrestop"])

}
