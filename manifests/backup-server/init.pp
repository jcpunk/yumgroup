class yumgroup::backup-server {

  if $::osfamily == 'RedHat' and $::operatingsystem == 'Fedora' {
    fail('This module has not been verified under Fedora.')
  } elsif $::osfamily != 'RedHat' {
    fail('This module has not been verified under an osfamily other than RedHat')
  }

  include yumgroup::backup-server::mandatory
  include yumgroup::backup-server::default
  include yumgroup::backup-server::optional

}
