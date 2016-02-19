class yumgroup::cifs-file-server {

  if $::osfamily == 'RedHat' and $::operatingsystem == 'Fedora' {
    fail('This module has not been verified under Fedora.')
  } elsif $::osfamily != 'RedHat' {
    fail('This module has not been verified under an osfamily other than RedHat')
  }

  include yumgroup::cifs-file-server::mandatory
  include yumgroup::cifs-file-server::default
  include yumgroup::cifs-file-server::optional

}
