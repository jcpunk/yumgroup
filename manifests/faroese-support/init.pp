class yumgroup::faroese-support {

  if $::osfamily == 'RedHat' and $::operatingsystem == 'Fedora' {
    fail('This module has not been verified under Fedora.')
  } elsif $::osfamily != 'RedHat' {
    fail('This module has not been verified under an osfamily other than RedHat')
  }

  include yumgroup::faroese-support::mandatory
  include yumgroup::faroese-support::default
  include yumgroup::faroese-support::optional

}
