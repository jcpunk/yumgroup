class yumgroup::basic-desktop {

  if $::osfamily == 'RedHat' and $::operatingsystem == 'Fedora' {
    fail('This module has not been verified under Fedora.')
  } elsif $::osfamily != 'RedHat' {
    fail('This module has not been verified under an osfamily other than RedHat')
  }

  include yumgroup::basic-desktop::mandatory
  include yumgroup::basic-desktop::default
  include yumgroup::basic-desktop::optional

}
