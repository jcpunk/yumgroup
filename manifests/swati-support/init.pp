class yumgroup::swati-support {

  if $::osfamily == 'RedHat' and $::operatingsystem == 'Fedora' {
    fail('This module has not been verified under Fedora.')
  } elsif $::osfamily != 'RedHat' {
    fail('This module has not been verified under an osfamily other than RedHat')
  }

  include yumgroup::swati-support::mandatory
  include yumgroup::swati-support::default
  include yumgroup::swati-support::optional

}
