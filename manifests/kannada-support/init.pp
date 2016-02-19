class yumgroup::kannada-support {

  if $::osfamily == 'RedHat' and $::operatingsystem == 'Fedora' {
    fail('This module has not been verified under Fedora.')
  } elsif $::osfamily != 'RedHat' {
    fail('This module has not been verified under an osfamily other than RedHat')
  }

  include yumgroup::kannada-support::mandatory
  include yumgroup::kannada-support::default
  include yumgroup::kannada-support::optional

}
