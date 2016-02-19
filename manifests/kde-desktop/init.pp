class yumgroup::kde-desktop {

  if $::osfamily == 'RedHat' and $::operatingsystem == 'Fedora' {
    fail('This module has not been verified under Fedora.')
  } elsif $::osfamily != 'RedHat' {
    fail('This module has not been verified under an osfamily other than RedHat')
  }

  include yumgroup::kde-desktop::mandatory
  include yumgroup::kde-desktop::default
  include yumgroup::kde-desktop::optional

}
