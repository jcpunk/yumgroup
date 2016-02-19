class yumgroup::resilient-storage {

  if $::osfamily == 'RedHat' and $::operatingsystem == 'Fedora' {
    fail('This module has not been verified under Fedora.')
  } elsif $::osfamily != 'RedHat' {
    fail('This module has not been verified under an osfamily other than RedHat')
  }

  include yumgroup::resilient-storage::mandatory
  include yumgroup::resilient-storage::default
  include yumgroup::resilient-storage::optional

}
