class yumgroup::system-admin-tools::mandatory {

  if $::osfamily == 'RedHat' and $::operatingsystem == 'Fedora' {
    fail('This module has not been verified under Fedora.')
  } elsif $::osfamily != 'RedHat' {
    fail('This module has not been verified under an osfamily other than RedHat')
  }

  include yumgroup::${::osfamily}::osver${::operatingsystemmajrelease}::system-admin-tools::mandatory

}