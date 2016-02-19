class yumgroup::dns-server {

  if $::osfamily == 'RedHat' and $::operatingsystem == 'Fedora' {
    fail('This module has not been verified under Fedora.')
  } elsif $::osfamily != 'RedHat' {
    fail('This module has not been verified under an osfamily other than RedHat')
  }

  include yumgroup::dns-server::mandatory
  include yumgroup::dns-server::default
  include yumgroup::dns-server::optional

}
