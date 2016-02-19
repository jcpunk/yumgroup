class yumgroup::desktop-platform-devel {

  if $::osfamily == 'RedHat' and $::operatingsystem == 'Fedora' {
    fail('This module has not been verified under Fedora.')
  } elsif $::osfamily != 'RedHat' {
    fail('This module has not been verified under an osfamily other than RedHat')
  }

  include yumgroup::desktop-platform-devel::mandatory
  include yumgroup::desktop-platform-devel::default
  include yumgroup::desktop-platform-devel::optional

}
