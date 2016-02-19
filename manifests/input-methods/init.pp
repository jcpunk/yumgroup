class yumgroup::input-methods {

  if $::osfamily == 'RedHat' and $::operatingsystem == 'Fedora' {
    fail('This module has not been verified under Fedora.')
  } elsif $::osfamily != 'RedHat' {
    fail('This module has not been verified under an osfamily other than RedHat')
  }

  include yumgroup::input-methods::mandatory
  include yumgroup::input-methods::default
  include yumgroup::input-methods::optional

}
