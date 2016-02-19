class yumgroup::somali-support {

  if $::osfamily == 'RedHat' and $::operatingsystem == 'Fedora' {
    fail('This module has not been verified under Fedora.')
  } elsif $::osfamily != 'RedHat' {
    fail('This module has not been verified under an osfamily other than RedHat')
  }

  include yumgroup::somali-support::mandatory
  include yumgroup::somali-support::default
  include yumgroup::somali-support::optional

}
