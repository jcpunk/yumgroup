class yumgroup::system-management {

  if $::osfamily == 'RedHat' and $::operatingsystem == 'Fedora' {
    fail('This module has not been verified under Fedora.')
  } elsif $::osfamily != 'RedHat' {
    fail('This module has not been verified under an osfamily other than RedHat')
  }

  include yumgroup::system-management::mandatory
  include yumgroup::system-management::default
  include yumgroup::system-management::optional

}
