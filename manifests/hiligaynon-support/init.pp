class yumgroup::hiligaynon-support {

  if $::osfamily == 'RedHat' and $::operatingsystem == 'Fedora' {
    fail('This module has not been verified under Fedora.')
  } elsif $::osfamily != 'RedHat' {
    fail('This module has not been verified under an osfamily other than RedHat')
  }

  include yumgroup::hiligaynon-support::mandatory
  include yumgroup::hiligaynon-support::default
  include yumgroup::hiligaynon-support::optional

}
