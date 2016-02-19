class yumgroup::desktop-debugging {

  if $::osfamily == 'RedHat' and $::operatingsystem == 'Fedora' {
    fail('This module has not been verified under Fedora.')
  } elsif $::osfamily != 'RedHat' {
    fail('This module has not been verified under an osfamily other than RedHat')
  }

  include yumgroup::desktop-debugging::mandatory
  include yumgroup::desktop-debugging::default
  include yumgroup::desktop-debugging::optional

}
