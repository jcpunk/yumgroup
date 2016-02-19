class yumgroup::belarusian-support {

  if $::osfamily == 'RedHat' and $::operatingsystem == 'Fedora' {
    fail('This module has not been verified under Fedora.')
  } elsif $::osfamily != 'RedHat' {
    fail('This module has not been verified under an osfamily other than RedHat')
  }

  include yumgroup::belarusian-support::mandatory
  include yumgroup::belarusian-support::default
  include yumgroup::belarusian-support::optional

}
