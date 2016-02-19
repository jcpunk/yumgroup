class yumgroup::kde-apps {

  if $::osfamily == 'RedHat' and $::operatingsystem == 'Fedora' {
    fail('This module has not been verified under Fedora.')
  } elsif $::osfamily != 'RedHat' {
    fail('This module has not been verified under an osfamily other than RedHat')
  }

  include yumgroup::kde-apps::mandatory
  include yumgroup::kde-apps::default
  include yumgroup::kde-apps::optional

}
