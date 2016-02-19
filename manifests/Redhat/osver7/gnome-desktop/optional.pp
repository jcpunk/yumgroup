class yumgroup::Redhat::osver7::gnome-desktop::optional {

  if $::osfamily == 'RedHat' and $::operatingsystem == 'Fedora' {
    fail('This module has not been verified under Fedora.')
  } elsif $::osfamily != 'RedHat' {
    fail('This module has not been verified under an osfamily other than RedHat')
  }

  if $::operatingsystemmajrelease != "7" {
    fail("This module is for 7 not $::operatingsystemmajrelease")
  }
  ensure_packages(["alacarte", "dconf-editor", "dvgrab", "fonts-tweak-tool", "gconf-editor", "gedit-plugins", "gnome-shell-browser-plugin", "gnote", "seahorse-nautilus", "seahorse-sharing", "vim-X11", "xguest"])

}
