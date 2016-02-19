class yumgroup::web-servlet {

  if $::osfamily == 'RedHat' and $::operatingsystem == 'Fedora' {
    fail('This module has not been verified under Fedora.')
  } elsif $::osfamily != 'RedHat' {
    fail('This module has not been verified under an osfamily other than RedHat')
  }

  include yumgroup::web-servlet::mandatory
  include yumgroup::web-servlet::default
  include yumgroup::web-servlet::optional

}
