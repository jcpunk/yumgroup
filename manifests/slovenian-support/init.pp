class yumgroup::slovenian-support {

  if $::osfamily == 'RedHat' and $::operatingsystem == 'Fedora' {
    fail('This module has not been verified under Fedora.')
  } elsif $::osfamily != 'RedHat' {
    fail('This module has not been verified under an osfamily other than RedHat')
  }

  include yumgroup::slovenian-support::mandatory
  include yumgroup::slovenian-support::default
  include yumgroup::slovenian-support::optional

}
