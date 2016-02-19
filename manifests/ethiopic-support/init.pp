class yumgroup::ethiopic-support {

  if $::osfamily == 'RedHat' and $::operatingsystem == 'Fedora' {
    fail('This module has not been verified under Fedora.')
  } elsif $::osfamily != 'RedHat' {
    fail('This module has not been verified under an osfamily other than RedHat')
  }

  include yumgroup::ethiopic-support::mandatory
  include yumgroup::ethiopic-support::default
  include yumgroup::ethiopic-support::optional

}
