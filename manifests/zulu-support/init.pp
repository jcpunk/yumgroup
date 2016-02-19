class yumgroup::zulu-support {

  if $::osfamily == 'RedHat' and $::operatingsystem == 'Fedora' {
    fail('This module has not been verified under Fedora.')
  } elsif $::osfamily != 'RedHat' {
    fail('This module has not been verified under an osfamily other than RedHat')
  }

  include yumgroup::zulu-support::mandatory
  include yumgroup::zulu-support::default
  include yumgroup::zulu-support::optional

}
