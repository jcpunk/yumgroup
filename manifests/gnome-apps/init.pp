class yumgroup::gnome-apps {

  if $::osfamily == 'RedHat' and $::operatingsystem == 'Fedora' {
    fail('This module has not been verified under Fedora.')
  } elsif $::osfamily != 'RedHat' {
    fail('This module has not been verified under an osfamily other than RedHat')
  }

  include yumgroup::gnome-apps::mandatory
  include yumgroup::gnome-apps::default
  include yumgroup::gnome-apps::optional

}
