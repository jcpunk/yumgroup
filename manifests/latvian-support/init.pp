class yumgroup::latvian-support {

  if $::osfamily == 'RedHat' and $::operatingsystem == 'Fedora' {
    fail('This module has not been verified under Fedora.')
  } elsif $::osfamily != 'RedHat' {
    fail('This module has not been verified under an osfamily other than RedHat')
  }

  include yumgroup::latvian-support::mandatory
  include yumgroup::latvian-support::default
  include yumgroup::latvian-support::optional

}
