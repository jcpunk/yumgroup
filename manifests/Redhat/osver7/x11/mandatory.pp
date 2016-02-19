class yumgroup::Redhat::osver7::x11::mandatory {

  if $::osfamily == 'RedHat' and $::operatingsystem == 'Fedora' {
    fail('This module has not been verified under Fedora.')
  } elsif $::osfamily != 'RedHat' {
    fail('This module has not been verified under an osfamily other than RedHat')
  }

  if $::operatingsystemmajrelease != "7" {
    fail("This module is for 7 not $::operatingsystemmajrelease")
  }
  ensure_packages(["glx-utils", "mesa-dri-drivers", "plymouth-system-theme", "spice-vdagent", "xorg-x11-drivers", "xorg-x11-server-Xorg", "xorg-x11-utils", "xorg-x11-xauth", "xorg-x11-xinit", "xvattr"])

}
