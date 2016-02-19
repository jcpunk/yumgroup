class yumgroup::tibetan-support {

  if $::osfamily == 'RedHat' and $::operatingsystem == 'Fedora' {
    fail('This module has not been verified under Fedora.')
  } elsif $::osfamily != 'RedHat' {
    fail('This module has not been verified under an osfamily other than RedHat')
  }

  include yumgroup::tibetan-support::mandatory
  include yumgroup::tibetan-support::default
  include yumgroup::tibetan-support::optional

}
