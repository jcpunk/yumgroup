class yumgroup::storage-server {

  if $::osfamily == 'RedHat' and $::operatingsystem == 'Fedora' {
    fail('This module has not been verified under Fedora.')
  } elsif $::osfamily != 'RedHat' {
    fail('This module has not been verified under an osfamily other than RedHat')
  }

  include yumgroup::storage-server::mandatory
  include yumgroup::storage-server::default
  include yumgroup::storage-server::optional

}
