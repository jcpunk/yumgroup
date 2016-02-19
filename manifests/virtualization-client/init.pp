class yumgroup::virtualization-client {

  if $::osfamily == 'RedHat' and $::operatingsystem == 'Fedora' {
    fail('This module has not been verified under Fedora.')
  } elsif $::osfamily != 'RedHat' {
    fail('This module has not been verified under an osfamily other than RedHat')
  }

  include yumgroup::virtualization-client::mandatory
  include yumgroup::virtualization-client::default
  include yumgroup::virtualization-client::optional

}
