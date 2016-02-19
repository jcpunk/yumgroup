class yumgroup::Redhat::osver6::graphical-admin-tools::optional {

  if $::osfamily == 'RedHat' and $::operatingsystem == 'Fedora' {
    fail('This module has not been verified under Fedora.')
  } elsif $::osfamily != 'RedHat' {
    fail('This module has not been verified under an osfamily other than RedHat')
  }

  if $::operatingsystemmajrelease != "6" {
    fail("This module is for 6 not $::operatingsystemmajrelease")
  }
  ensure_packages(["audit-viewer", "firstaidkit-gui", "lshw-gui", "policycoreutils-gui", "sabayon", "setroubleshoot", "system-config-kickstart", "system-config-lvm", "wireshark-gnome"])

}
