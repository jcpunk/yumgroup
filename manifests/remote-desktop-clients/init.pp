class yumgroup::remote-desktop-clients {

  if $::osfamily == 'RedHat' and $::operatingsystem == 'Fedora' {
    fail('This module has not been verified under Fedora.')
  } elsif $::osfamily != 'RedHat' {
    fail('This module has not been verified under an osfamily other than RedHat')
  }

  include yumgroup::remote-desktop-clients::mandatory
  include yumgroup::remote-desktop-clients::default
  include yumgroup::remote-desktop-clients::optional

}
