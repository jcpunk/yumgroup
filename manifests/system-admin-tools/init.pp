class yumgroup::system-admin-tools {

  if $::osfamily == 'RedHat' and $::operatingsystem == 'Fedora' {
    fail('This module has not been verified under Fedora.')
  } elsif $::osfamily != 'RedHat' {
    fail('This module has not been verified under an osfamily other than RedHat')
  }

  include yumgroup::system-admin-tools::mandatory
  include yumgroup::system-admin-tools::default
  include yumgroup::system-admin-tools::optional

}
