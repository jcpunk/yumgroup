class yumgroup::maltese-support {

  if $::osfamily == 'RedHat' and $::operatingsystem == 'Fedora' {
    fail('This module has not been verified under Fedora.')
  } elsif $::osfamily != 'RedHat' {
    fail('This module has not been verified under an osfamily other than RedHat')
  }

  include yumgroup::maltese-support::mandatory
  include yumgroup::maltese-support::default
  include yumgroup::maltese-support::optional

}
