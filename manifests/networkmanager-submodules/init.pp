class yumgroup::networkmanager-submodules {

  if $::osfamily == 'RedHat' and $::operatingsystem == 'Fedora' {
    fail('This module has not been verified under Fedora.')
  } elsif $::osfamily != 'RedHat' {
    fail('This module has not been verified under an osfamily other than RedHat')
  }

  include yumgroup::networkmanager-submodules::mandatory
  include yumgroup::networkmanager-submodules::default
  include yumgroup::networkmanager-submodules::optional

}
