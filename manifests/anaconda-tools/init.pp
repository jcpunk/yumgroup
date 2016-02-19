class yumgroup::anaconda-tools {

  if $::osfamily == 'RedHat' and $::operatingsystem == 'Fedora' {
    fail('This module has not been verified under Fedora.')
  } elsif $::osfamily != 'RedHat' {
    fail('This module has not been verified under an osfamily other than RedHat')
  }

  include yumgroup::anaconda-tools::mandatory
  include yumgroup::anaconda-tools::default
  include yumgroup::anaconda-tools::optional

}
