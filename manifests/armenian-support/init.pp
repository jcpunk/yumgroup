class yumgroup::armenian-support {

  if $::osfamily == 'RedHat' and $::operatingsystem == 'Fedora' {
    fail('This module has not been verified under Fedora.')
  } elsif $::osfamily != 'RedHat' {
    fail('This module has not been verified under an osfamily other than RedHat')
  }

  include yumgroup::armenian-support::mandatory
  include yumgroup::armenian-support::default
  include yumgroup::armenian-support::optional

}
