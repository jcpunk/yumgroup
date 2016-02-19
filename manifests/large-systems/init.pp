class yumgroup::large-systems {

  if $::osfamily == 'RedHat' and $::operatingsystem == 'Fedora' {
    fail('This module has not been verified under Fedora.')
  } elsif $::osfamily != 'RedHat' {
    fail('This module has not been verified under an osfamily other than RedHat')
  }

  include yumgroup::large-systems::mandatory
  include yumgroup::large-systems::default
  include yumgroup::large-systems::optional

}
