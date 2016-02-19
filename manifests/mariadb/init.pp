class yumgroup::mariadb {

  if $::osfamily == 'RedHat' and $::operatingsystem == 'Fedora' {
    fail('This module has not been verified under Fedora.')
  } elsif $::osfamily != 'RedHat' {
    fail('This module has not been verified under an osfamily other than RedHat')
  }

  include yumgroup::mariadb::mandatory
  include yumgroup::mariadb::default
  include yumgroup::mariadb::optional

}
