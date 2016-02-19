class yumgroup::bhutanese-support {

  if $::osfamily == 'RedHat' and $::operatingsystem == 'Fedora' {
    fail('This module has not been verified under Fedora.')
  } elsif $::osfamily != 'RedHat' {
    fail('This module has not been verified under an osfamily other than RedHat')
  }

  include yumgroup::bhutanese-support::mandatory
  include yumgroup::bhutanese-support::default
  include yumgroup::bhutanese-support::optional

}
