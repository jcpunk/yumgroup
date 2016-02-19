class yumgroup::maori-support {

  if $::osfamily == 'RedHat' and $::operatingsystem == 'Fedora' {
    fail('This module has not been verified under Fedora.')
  } elsif $::osfamily != 'RedHat' {
    fail('This module has not been verified under an osfamily other than RedHat')
  }

  include yumgroup::maori-support::mandatory
  include yumgroup::maori-support::default
  include yumgroup::maori-support::optional

}
