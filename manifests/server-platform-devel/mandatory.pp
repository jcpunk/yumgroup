class yumgroup::server-platform-devel::mandatory {

  if $::osfamily == 'RedHat' and $::operatingsystem == 'Fedora' {
    fail('This module has not been verified under Fedora.')
  } elsif $::osfamily != 'RedHat' {
    fail('This module has not been verified under an osfamily other than RedHat')
  }

  include yumgroup::${::osfamily}::osver${::operatingsystemmajrelease}::server-platform-devel::mandatory

}
