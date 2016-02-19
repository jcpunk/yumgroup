class yumgroup::storage-client-fcoe {

  if $::osfamily == 'RedHat' and $::operatingsystem == 'Fedora' {
    fail('This module has not been verified under Fedora.')
  } elsif $::osfamily != 'RedHat' {
    fail('This module has not been verified under an osfamily other than RedHat')
  }

  include yumgroup::storage-client-fcoe::mandatory
  include yumgroup::storage-client-fcoe::default
  include yumgroup::storage-client-fcoe::optional

}
