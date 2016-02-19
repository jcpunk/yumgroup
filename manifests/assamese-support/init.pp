class yumgroup::assamese-support {

  if $::osfamily == 'RedHat' and $::operatingsystem == 'Fedora' {
    fail('This module has not been verified under Fedora.')
  } elsif $::osfamily != 'RedHat' {
    fail('This module has not been verified under an osfamily other than RedHat')
  }

  include yumgroup::assamese-support::mandatory
  include yumgroup::assamese-support::default
  include yumgroup::assamese-support::optional

}
