class yumgroup::kashubian-support {

  if $::osfamily == 'RedHat' and $::operatingsystem == 'Fedora' {
    fail('This module has not been verified under Fedora.')
  } elsif $::osfamily != 'RedHat' {
    fail('This module has not been verified under an osfamily other than RedHat')
  }

  include yumgroup::kashubian-support::mandatory
  include yumgroup::kashubian-support::default
  include yumgroup::kashubian-support::optional

}
