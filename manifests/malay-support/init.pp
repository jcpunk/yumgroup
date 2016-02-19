class yumgroup::malay-support {

  if $::osfamily == 'RedHat' and $::operatingsystem == 'Fedora' {
    fail('This module has not been verified under Fedora.')
  } elsif $::osfamily != 'RedHat' {
    fail('This module has not been verified under an osfamily other than RedHat')
  }

  include yumgroup::malay-support::mandatory
  include yumgroup::malay-support::default
  include yumgroup::malay-support::optional

}
