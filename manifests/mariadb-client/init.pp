class yumgroup::mariadb-client {

  if $::osfamily == 'RedHat' and $::operatingsystem == 'Fedora' {
    fail('This module has not been verified under Fedora.')
  } elsif $::osfamily != 'RedHat' {
    fail('This module has not been verified under an osfamily other than RedHat')
  }

  include yumgroup::mariadb-client::mandatory
  include yumgroup::mariadb-client::default
  include yumgroup::mariadb-client::optional

}
