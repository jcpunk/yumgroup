class yumgroup::remote-system-management {

  if $::osfamily == 'RedHat' and $::operatingsystem == 'Fedora' {
    fail('This module has not been verified under Fedora.')
  } elsif $::osfamily != 'RedHat' {
    fail('This module has not been verified under an osfamily other than RedHat')
  }

  include yumgroup::remote-system-management::mandatory
  include yumgroup::remote-system-management::default
  include yumgroup::remote-system-management::optional

}
