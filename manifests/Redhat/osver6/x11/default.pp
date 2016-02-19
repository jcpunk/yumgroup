class yumgroup::Redhat::osver6::x11::default {

  if $::osfamily == 'RedHat' and $::operatingsystem == 'Fedora' {
    fail('This module has not been verified under Fedora.')
  } elsif $::osfamily != 'RedHat' {
    fail('This module has not been verified under an osfamily other than RedHat')
  }

  if $::operatingsystemmajrelease != "6" {
    fail("This module is for 6 not $::operatingsystemmajrelease")
  }
  ensure_packages(["firstboot", "glx-utils", "hal", "plymouth-system-theme", "spice-vdagent", "wacomexpresskeys", "wdaemon", "xorg-x11-server-utils", "xorg-x11-utils", "xvattr"])

}
