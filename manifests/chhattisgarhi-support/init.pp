class yumgroup::chhattisgarhi-support {

  if $::osfamily == 'RedHat' and $::operatingsystem == 'Fedora' {
    fail('This module has not been verified under Fedora.')
  } elsif $::osfamily != 'RedHat' {
    fail('This module has not been verified under an osfamily other than RedHat')
  }

  include yumgroup::chhattisgarhi-support::mandatory
  include yumgroup::chhattisgarhi-support::default
  include yumgroup::chhattisgarhi-support::optional

}
