class yumgroup::ice-desktop {

  if $::osfamily == 'RedHat' and $::operatingsystem == 'Fedora' {
    fail('This module has not been verified under Fedora.')
  } elsif $::osfamily != 'RedHat' {
    fail('This module has not been verified under an osfamily other than RedHat')
  }

  include yumgroup::ice-desktop::mandatory
  include yumgroup::ice-desktop::default
  include yumgroup::ice-desktop::optional

}
