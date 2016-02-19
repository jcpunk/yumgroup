class yumgroup::scalable-file-systems {

  if $::osfamily == 'RedHat' and $::operatingsystem == 'Fedora' {
    fail('This module has not been verified under Fedora.')
  } elsif $::osfamily != 'RedHat' {
    fail('This module has not been verified under an osfamily other than RedHat')
  }

  include yumgroup::scalable-file-systems::mandatory
  include yumgroup::scalable-file-systems::default
  include yumgroup::scalable-file-systems::optional

}
