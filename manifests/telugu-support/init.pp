class yumgroup::telugu-support {

  if $::osfamily == 'RedHat' and $::operatingsystem == 'Fedora' {
    fail('This module has not been verified under Fedora.')
  } elsif $::osfamily != 'RedHat' {
    fail('This module has not been verified under an osfamily other than RedHat')
  }

  include yumgroup::telugu-support::mandatory
  include yumgroup::telugu-support::default
  include yumgroup::telugu-support::optional

}
