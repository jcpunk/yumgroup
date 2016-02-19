class yumgroup::tswana-support {

  if $::osfamily == 'RedHat' and $::operatingsystem == 'Fedora' {
    fail('This module has not been verified under Fedora.')
  } elsif $::osfamily != 'RedHat' {
    fail('This module has not been verified under an osfamily other than RedHat')
  }

  include yumgroup::tswana-support::mandatory
  include yumgroup::tswana-support::default
  include yumgroup::tswana-support::optional

}
