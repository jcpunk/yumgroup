class yumgroup::infiniband {

  if $::osfamily == 'RedHat' and $::operatingsystem == 'Fedora' {
    fail('This module has not been verified under Fedora.')
  } elsif $::osfamily != 'RedHat' {
    fail('This module has not been verified under an osfamily other than RedHat')
  }

  include yumgroup::infiniband::mandatory
  include yumgroup::infiniband::default
  include yumgroup::infiniband::optional

}
