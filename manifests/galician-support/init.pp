class yumgroup::galician-support {

  if $::osfamily == 'RedHat' and $::operatingsystem == 'Fedora' {
    fail('This module has not been verified under Fedora.')
  } elsif $::osfamily != 'RedHat' {
    fail('This module has not been verified under an osfamily other than RedHat')
  }

  include yumgroup::galician-support::mandatory
  include yumgroup::galician-support::default
  include yumgroup::galician-support::optional

}
