class yumgroup::identity-management-server {

  if $::osfamily == 'RedHat' and $::operatingsystem == 'Fedora' {
    fail('This module has not been verified under Fedora.')
  } elsif $::osfamily != 'RedHat' {
    fail('This module has not been verified under an osfamily other than RedHat')
  }

  include yumgroup::identity-management-server::mandatory
  include yumgroup::identity-management-server::default
  include yumgroup::identity-management-server::optional

}
