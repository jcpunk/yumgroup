class yumgroup::maithili-support {

  if $::osfamily == 'RedHat' and $::operatingsystem == 'Fedora' {
    fail('This module has not been verified under Fedora.')
  } elsif $::osfamily != 'RedHat' {
    fail('This module has not been verified under an osfamily other than RedHat')
  }

  include yumgroup::maithili-support::mandatory
  include yumgroup::maithili-support::default
  include yumgroup::maithili-support::optional

}
