class yumgroup::postgresql-client {

  if $::osfamily == 'RedHat' and $::operatingsystem == 'Fedora' {
    fail('This module has not been verified under Fedora.')
  } elsif $::osfamily != 'RedHat' {
    fail('This module has not been verified under an osfamily other than RedHat')
  }

  include yumgroup::postgresql-client::mandatory
  include yumgroup::postgresql-client::default
  include yumgroup::postgresql-client::optional

}
