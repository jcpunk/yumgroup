class yumgroup::client-mgmt-tools {

  if $::osfamily == 'RedHat' and $::operatingsystem == 'Fedora' {
    fail('This module has not been verified under Fedora.')
  } elsif $::osfamily != 'RedHat' {
    fail('This module has not been verified under an osfamily other than RedHat')
  }

  include yumgroup::client-mgmt-tools::mandatory
  include yumgroup::client-mgmt-tools::default
  include yumgroup::client-mgmt-tools::optional

}
