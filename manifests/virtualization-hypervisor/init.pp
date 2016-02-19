class yumgroup::virtualization-hypervisor {

  if $::osfamily == 'RedHat' and $::operatingsystem == 'Fedora' {
    fail('This module has not been verified under Fedora.')
  } elsif $::osfamily != 'RedHat' {
    fail('This module has not been verified under an osfamily other than RedHat')
  }

  include yumgroup::virtualization-hypervisor::mandatory
  include yumgroup::virtualization-hypervisor::default
  include yumgroup::virtualization-hypervisor::optional

}
