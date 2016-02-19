class yumgroup::indonesian-support {

  if $::osfamily == 'RedHat' and $::operatingsystem == 'Fedora' {
    fail('This module has not been verified under Fedora.')
  } elsif $::osfamily != 'RedHat' {
    fail('This module has not been verified under an osfamily other than RedHat')
  }

  include yumgroup::indonesian-support::mandatory
  include yumgroup::indonesian-support::default
  include yumgroup::indonesian-support::optional

}
