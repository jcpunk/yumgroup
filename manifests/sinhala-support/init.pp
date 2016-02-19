class yumgroup::sinhala-support {

  if $::osfamily == 'RedHat' and $::operatingsystem == 'Fedora' {
    fail('This module has not been verified under Fedora.')
  } elsif $::osfamily != 'RedHat' {
    fail('This module has not been verified under an osfamily other than RedHat')
  }

  include yumgroup::sinhala-support::mandatory
  include yumgroup::sinhala-support::default
  include yumgroup::sinhala-support::optional

}
