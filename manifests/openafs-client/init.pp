class yumgroup::openafs-client {

  if $::osfamily == 'RedHat' and $::operatingsystem == 'Fedora' {
    fail('This module has not been verified under Fedora.')
  } elsif $::osfamily != 'RedHat' {
    fail('This module has not been verified under an osfamily other than RedHat')
  }

  include yumgroup::openafs-client::mandatory
  include yumgroup::openafs-client::default
  include yumgroup::openafs-client::optional

}
