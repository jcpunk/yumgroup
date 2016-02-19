class yumgroup::guest-desktop-agents {

  if $::osfamily == 'RedHat' and $::operatingsystem == 'Fedora' {
    fail('This module has not been verified under Fedora.')
  } elsif $::osfamily != 'RedHat' {
    fail('This module has not been verified under an osfamily other than RedHat')
  }

  include yumgroup::guest-desktop-agents::mandatory
  include yumgroup::guest-desktop-agents::default
  include yumgroup::guest-desktop-agents::optional

}
