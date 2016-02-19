class yumgroup::southern-ndebele-support {

  if $::osfamily == 'RedHat' and $::operatingsystem == 'Fedora' {
    fail('This module has not been verified under Fedora.')
  } elsif $::osfamily != 'RedHat' {
    fail('This module has not been verified under an osfamily other than RedHat')
  }

  include yumgroup::southern-ndebele-support::mandatory
  include yumgroup::southern-ndebele-support::default
  include yumgroup::southern-ndebele-support::optional

}
