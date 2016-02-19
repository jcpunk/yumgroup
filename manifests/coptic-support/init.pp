class yumgroup::coptic-support {

  if $::osfamily == 'RedHat' and $::operatingsystem == 'Fedora' {
    fail('This module has not been verified under Fedora.')
  } elsif $::osfamily != 'RedHat' {
    fail('This module has not been verified under an osfamily other than RedHat')
  }

  include yumgroup::coptic-support::mandatory
  include yumgroup::coptic-support::default
  include yumgroup::coptic-support::optional

}
