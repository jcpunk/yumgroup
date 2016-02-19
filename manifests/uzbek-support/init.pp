class yumgroup::uzbek-support {

  if $::osfamily == 'RedHat' and $::operatingsystem == 'Fedora' {
    fail('This module has not been verified under Fedora.')
  } elsif $::osfamily != 'RedHat' {
    fail('This module has not been verified under an osfamily other than RedHat')
  }

  include yumgroup::uzbek-support::mandatory
  include yumgroup::uzbek-support::default
  include yumgroup::uzbek-support::optional

}
