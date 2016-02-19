class yumgroup::legacy-unix {

  if $::osfamily == 'RedHat' and $::operatingsystem == 'Fedora' {
    fail('This module has not been verified under Fedora.')
  } elsif $::osfamily != 'RedHat' {
    fail('This module has not been verified under an osfamily other than RedHat')
  }

  include yumgroup::legacy-unix::mandatory
  include yumgroup::legacy-unix::default
  include yumgroup::legacy-unix::optional

}
