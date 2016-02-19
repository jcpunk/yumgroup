class yumgroup::guest-agents {

  if $::osfamily == 'RedHat' and $::operatingsystem == 'Fedora' {
    fail('This module has not been verified under Fedora.')
  } elsif $::osfamily != 'RedHat' {
    fail('This module has not been verified under an osfamily other than RedHat')
  }

  include yumgroup::guest-agents::mandatory
  include yumgroup::guest-agents::default
  include yumgroup::guest-agents::optional

}
