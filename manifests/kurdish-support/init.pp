class yumgroup::kurdish-support {

  if $::osfamily == 'RedHat' and $::operatingsystem == 'Fedora' {
    fail('This module has not been verified under Fedora.')
  } elsif $::osfamily != 'RedHat' {
    fail('This module has not been verified under an osfamily other than RedHat')
  }

  include yumgroup::kurdish-support::mandatory
  include yumgroup::kurdish-support::default
  include yumgroup::kurdish-support::optional

}
