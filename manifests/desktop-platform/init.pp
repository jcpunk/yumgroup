class yumgroup::desktop-platform {

  if $::osfamily == 'RedHat' and $::operatingsystem == 'Fedora' {
    fail('This module has not been verified under Fedora.')
  } elsif $::osfamily != 'RedHat' {
    fail('This module has not been verified under an osfamily other than RedHat')
  }

  include yumgroup::desktop-platform::mandatory
  include yumgroup::desktop-platform::default
  include yumgroup::desktop-platform::optional

}
