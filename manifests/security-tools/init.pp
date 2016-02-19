class yumgroup::security-tools {

  if $::osfamily == 'RedHat' and $::operatingsystem == 'Fedora' {
    fail('This module has not been verified under Fedora.')
  } elsif $::osfamily != 'RedHat' {
    fail('This module has not been verified under an osfamily other than RedHat')
  }

  include yumgroup::security-tools::mandatory
  include yumgroup::security-tools::default
  include yumgroup::security-tools::optional

}
