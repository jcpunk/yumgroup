class yumgroup::network-tools {

  if $::osfamily == 'RedHat' and $::operatingsystem == 'Fedora' {
    fail('This module has not been verified under Fedora.')
  } elsif $::osfamily != 'RedHat' {
    fail('This module has not been verified under an osfamily other than RedHat')
  }

  include yumgroup::network-tools::mandatory
  include yumgroup::network-tools::default
  include yumgroup::network-tools::optional

}
