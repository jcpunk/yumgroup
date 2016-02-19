class yumgroup::Redhat::osver7::x11::optional {

  if $::osfamily == 'RedHat' and $::operatingsystem == 'Fedora' {
    fail('This module has not been verified under Fedora.')
  } elsif $::osfamily != 'RedHat' {
    fail('This module has not been verified under an osfamily other than RedHat')
  }

  if $::operatingsystemmajrelease != "7" {
    fail("This module is for 7 not $::operatingsystemmajrelease")
  }
  ensure_packages(["initial-setup", "initial-setup-gui", "tigervnc-server", "xorg-x11-drv-keyboard", "xorg-x11-drv-mouse", "xorg-x11-drv-openchrome"])

}
