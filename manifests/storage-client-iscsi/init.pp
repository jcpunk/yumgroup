class yumgroup::storage-client-iscsi {

  if $::osfamily == 'RedHat' and $::operatingsystem == 'Fedora' {
    fail('This module has not been verified under Fedora.')
  } elsif $::osfamily != 'RedHat' {
    fail('This module has not been verified under an osfamily other than RedHat')
  }

  include yumgroup::storage-client-iscsi::mandatory
  include yumgroup::storage-client-iscsi::default
  include yumgroup::storage-client-iscsi::optional

}
