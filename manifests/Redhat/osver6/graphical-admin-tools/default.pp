class yumgroup::Redhat::osver6::graphical-admin-tools::default {

  if $::osfamily == 'RedHat' and $::operatingsystem == 'Fedora' {
    fail('This module has not been verified under Fedora.')
  } elsif $::osfamily != 'RedHat' {
    fail('This module has not been verified under an osfamily other than RedHat')
  }

  if $::operatingsystemmajrelease != "6" {
    fail("This module is for 6 not $::operatingsystemmajrelease")
  }
  ensure_packages(["authconfig-gtk", "gnome-disk-utility", "gnome-packagekit", "system-config-firewall", "system-config-kdump", "system-config-keyboard", "system-config-services", "system-config-users"])

}
