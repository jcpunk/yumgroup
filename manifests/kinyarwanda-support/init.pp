class yumgroup::kinyarwanda-support {

  if $::osfamily == 'RedHat' and $::operatingsystem == 'Fedora' {
    fail('This module has not been verified under Fedora.')
  } elsif $::osfamily != 'RedHat' {
    fail('This module has not been verified under an osfamily other than RedHat')
  }

  include yumgroup::kinyarwanda-support::mandatory
  include yumgroup::kinyarwanda-support::default
  include yumgroup::kinyarwanda-support::optional

}
