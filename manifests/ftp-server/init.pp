class yumgroup::ftp-server {

  if $::osfamily == 'RedHat' and $::operatingsystem == 'Fedora' {
    fail('This module has not been verified under Fedora.')
  } elsif $::osfamily != 'RedHat' {
    fail('This module has not been verified under an osfamily other than RedHat')
  }

  include yumgroup::ftp-server::mandatory
  include yumgroup::ftp-server::default
  include yumgroup::ftp-server::optional

}
