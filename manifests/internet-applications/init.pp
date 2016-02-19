class yumgroup::internet-applications {

  if $::osfamily == 'RedHat' and $::operatingsystem == 'Fedora' {
    fail('This module has not been verified under Fedora.')
  } elsif $::osfamily != 'RedHat' {
    fail('This module has not been verified under an osfamily other than RedHat')
  }

  include yumgroup::internet-applications::mandatory
  include yumgroup::internet-applications::default
  include yumgroup::internet-applications::optional

}
