class yumgroup::sardinian-support {

  if $::osfamily == 'RedHat' and $::operatingsystem == 'Fedora' {
    fail('This module has not been verified under Fedora.')
  } elsif $::osfamily != 'RedHat' {
    fail('This module has not been verified under an osfamily other than RedHat')
  }

  include yumgroup::sardinian-support::mandatory
  include yumgroup::sardinian-support::default
  include yumgroup::sardinian-support::optional

}
