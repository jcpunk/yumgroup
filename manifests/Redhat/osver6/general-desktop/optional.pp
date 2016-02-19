class yumgroup::Redhat::osver6::general-desktop::optional {

  if $::osfamily == 'RedHat' and $::operatingsystem == 'Fedora' {
    fail('This module has not been verified under Fedora.')
  } elsif $::osfamily != 'RedHat' {
    fail('This module has not been verified under an osfamily other than RedHat')
  }

  if $::operatingsystemmajrelease != "6" {
    fail("This module is for 6 not $::operatingsystemmajrelease")
  }
  ensure_packages(["alacarte", "byzanz", "dvgrab", "gconf-editor", "gedit-plugins", "gnome-games", "gnome-pilot", "gnome-pilot-conduits", "krb5-auth-dialog", "rhythmbox-upnp", "seahorse-plugins", "totem-upnp", "vim-X11"])

}
