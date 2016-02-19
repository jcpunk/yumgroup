class yumgroup::estonian-support {

  if $::osfamily == 'RedHat' and $::operatingsystem == 'Fedora' {
    fail('This module has not been verified under Fedora.')
  } elsif $::osfamily != 'RedHat' {
    fail('This module has not been verified under an osfamily other than RedHat')
  }

  include yumgroup::estonian-support::mandatory
  include yumgroup::estonian-support::default
  include yumgroup::estonian-support::optional

}
