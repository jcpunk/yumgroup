class yumgroup::low-saxon-support {

  if $::osfamily == 'RedHat' and $::operatingsystem == 'Fedora' {
    fail('This module has not been verified under Fedora.')
  } elsif $::osfamily != 'RedHat' {
    fail('This module has not been verified under an osfamily other than RedHat')
  }

  include yumgroup::low-saxon-support::mandatory
  include yumgroup::low-saxon-support::default
  include yumgroup::low-saxon-support::optional

}
