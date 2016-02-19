class yumgroup::tajik-support {

  if $::osfamily == 'RedHat' and $::operatingsystem == 'Fedora' {
    fail('This module has not been verified under Fedora.')
  } elsif $::osfamily != 'RedHat' {
    fail('This module has not been verified under an osfamily other than RedHat')
  }

  include yumgroup::tajik-support::mandatory
  include yumgroup::tajik-support::default
  include yumgroup::tajik-support::optional

}
