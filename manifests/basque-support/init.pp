class yumgroup::basque-support {

  if $::osfamily == 'RedHat' and $::operatingsystem == 'Fedora' {
    fail('This module has not been verified under Fedora.')
  } elsif $::osfamily != 'RedHat' {
    fail('This module has not been verified under an osfamily other than RedHat')
  }

  include yumgroup::basque-support::mandatory
  include yumgroup::basque-support::default
  include yumgroup::basque-support::optional

}
