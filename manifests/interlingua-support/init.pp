class yumgroup::interlingua-support {

  if $::osfamily == 'RedHat' and $::operatingsystem == 'Fedora' {
    fail('This module has not been verified under Fedora.')
  } elsif $::osfamily != 'RedHat' {
    fail('This module has not been verified under an osfamily other than RedHat')
  }

  include yumgroup::interlingua-support::mandatory
  include yumgroup::interlingua-support::default
  include yumgroup::interlingua-support::optional

}
