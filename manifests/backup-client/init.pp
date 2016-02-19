class yumgroup::backup-client {

  if $::osfamily == 'RedHat' and $::operatingsystem == 'Fedora' {
    fail('This module has not been verified under Fedora.')
  } elsif $::osfamily != 'RedHat' {
    fail('This module has not been verified under an osfamily other than RedHat')
  }

  include yumgroup::backup-client::mandatory
  include yumgroup::backup-client::default
  include yumgroup::backup-client::optional

}
