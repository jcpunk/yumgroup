class yumgroup::tsonga-support {

  if $::osfamily == 'RedHat' and $::operatingsystem == 'Fedora' {
    fail('This module has not been verified under Fedora.')
  } elsif $::osfamily != 'RedHat' {
    fail('This module has not been verified under an osfamily other than RedHat')
  }

  include yumgroup::tsonga-support::mandatory
  include yumgroup::tsonga-support::default
  include yumgroup::tsonga-support::optional

}
