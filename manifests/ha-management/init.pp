class yumgroup::ha-management {

  if $::osfamily == 'RedHat' and $::operatingsystem == 'Fedora' {
    fail('This module has not been verified under Fedora.')
  } elsif $::osfamily != 'RedHat' {
    fail('This module has not been verified under an osfamily other than RedHat')
  }

  include yumgroup::ha-management::mandatory
  include yumgroup::ha-management::default
  include yumgroup::ha-management::optional

}
