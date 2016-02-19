class yumgroup::storage-client-multipath {

  if $::osfamily == 'RedHat' and $::operatingsystem == 'Fedora' {
    fail('This module has not been verified under Fedora.')
  } elsif $::osfamily != 'RedHat' {
    fail('This module has not been verified under an osfamily other than RedHat')
  }

  include yumgroup::storage-client-multipath::mandatory
  include yumgroup::storage-client-multipath::default
  include yumgroup::storage-client-multipath::optional

}
