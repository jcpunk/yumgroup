class yumgroup::upper-sorbian-support::optional {

  if $::osfamily == 'RedHat' and $::operatingsystem == 'Fedora' {
    fail('This module has not been verified under Fedora.')
  } elsif $::osfamily != 'RedHat' {
    fail('This module has not been verified under an osfamily other than RedHat')
  }

  include yumgroup::${::osfamily}::osver${::operatingsystemmajrelease}::upper-sorbian-support::optional

}
