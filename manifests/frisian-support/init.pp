class yumgroup::frisian-support {

  if $::osfamily == 'RedHat' and $::operatingsystem == 'Fedora' {
    fail('This module has not been verified under Fedora.')
  } elsif $::osfamily != 'RedHat' {
    fail('This module has not been verified under an osfamily other than RedHat')
  }

  include yumgroup::frisian-support::mandatory
  include yumgroup::frisian-support::default
  include yumgroup::frisian-support::optional

}
