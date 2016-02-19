class yumgroup::friulian-support {

  if $::osfamily == 'RedHat' and $::operatingsystem == 'Fedora' {
    fail('This module has not been verified under Fedora.')
  } elsif $::osfamily != 'RedHat' {
    fail('This module has not been verified under an osfamily other than RedHat')
  }

  include yumgroup::friulian-support::mandatory
  include yumgroup::friulian-support::default
  include yumgroup::friulian-support::optional

}
