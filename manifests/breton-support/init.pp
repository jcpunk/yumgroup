class yumgroup::breton-support {

  if $::osfamily == 'RedHat' and $::operatingsystem == 'Fedora' {
    fail('This module has not been verified under Fedora.')
  } elsif $::osfamily != 'RedHat' {
    fail('This module has not been verified under an osfamily other than RedHat')
  }

  include yumgroup::breton-support::mandatory
  include yumgroup::breton-support::default
  include yumgroup::breton-support::optional

}
