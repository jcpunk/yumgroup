class yumgroup::azerbaijani-support {

  if $::osfamily == 'RedHat' and $::operatingsystem == 'Fedora' {
    fail('This module has not been verified under Fedora.')
  } elsif $::osfamily != 'RedHat' {
    fail('This module has not been verified under an osfamily other than RedHat')
  }

  include yumgroup::azerbaijani-support::mandatory
  include yumgroup::azerbaijani-support::default
  include yumgroup::azerbaijani-support::optional

}
