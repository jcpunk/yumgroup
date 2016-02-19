class yumgroup::kashmiri-support {

  if $::osfamily == 'RedHat' and $::operatingsystem == 'Fedora' {
    fail('This module has not been verified under Fedora.')
  } elsif $::osfamily != 'RedHat' {
    fail('This module has not been verified under an osfamily other than RedHat')
  }

  include yumgroup::kashmiri-support::mandatory
  include yumgroup::kashmiri-support::default
  include yumgroup::kashmiri-support::optional

}
