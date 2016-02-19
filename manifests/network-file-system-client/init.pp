class yumgroup::network-file-system-client {

  if $::osfamily == 'RedHat' and $::operatingsystem == 'Fedora' {
    fail('This module has not been verified under Fedora.')
  } elsif $::osfamily != 'RedHat' {
    fail('This module has not been verified under an osfamily other than RedHat')
  }

  include yumgroup::network-file-system-client::mandatory
  include yumgroup::network-file-system-client::default
  include yumgroup::network-file-system-client::optional

}
