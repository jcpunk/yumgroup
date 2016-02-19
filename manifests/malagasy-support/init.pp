class yumgroup::malagasy-support {

  if $::osfamily == 'RedHat' and $::operatingsystem == 'Fedora' {
    fail('This module has not been verified under Fedora.')
  } elsif $::osfamily != 'RedHat' {
    fail('This module has not been verified under an osfamily other than RedHat')
  }

  include yumgroup::malagasy-support::mandatory
  include yumgroup::malagasy-support::default
  include yumgroup::malagasy-support::optional

}
