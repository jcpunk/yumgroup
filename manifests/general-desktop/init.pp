class yumgroup::general-desktop {

  if $::osfamily == 'RedHat' and $::operatingsystem == 'Fedora' {
    fail('This module has not been verified under Fedora.')
  } elsif $::osfamily != 'RedHat' {
    fail('This module has not been verified under an osfamily other than RedHat')
  }

  include yumgroup::general-desktop::mandatory
  include yumgroup::general-desktop::default
  include yumgroup::general-desktop::optional

}
