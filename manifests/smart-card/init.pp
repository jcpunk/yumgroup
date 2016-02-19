class yumgroup::smart-card {

  if $::osfamily == 'RedHat' and $::operatingsystem == 'Fedora' {
    fail('This module has not been verified under Fedora.')
  } elsif $::osfamily != 'RedHat' {
    fail('This module has not been verified under an osfamily other than RedHat')
  }

  include yumgroup::smart-card::mandatory
  include yumgroup::smart-card::default
  include yumgroup::smart-card::optional

}
