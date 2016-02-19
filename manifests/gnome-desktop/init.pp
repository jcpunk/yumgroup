class yumgroup::gnome-desktop {

  if $::osfamily == 'RedHat' and $::operatingsystem == 'Fedora' {
    fail('This module has not been verified under Fedora.')
  } elsif $::osfamily != 'RedHat' {
    fail('This module has not been verified under an osfamily other than RedHat')
  }

  include yumgroup::gnome-desktop::mandatory
  include yumgroup::gnome-desktop::default
  include yumgroup::gnome-desktop::optional

}
