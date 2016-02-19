class yumgroup::Redhat::osver6::basic-desktop::mandatory {

  if $::osfamily == 'RedHat' and $::operatingsystem == 'Fedora' {
    fail('This module has not been verified under Fedora.')
  } elsif $::osfamily != 'RedHat' {
    fail('This module has not been verified under an osfamily other than RedHat')
  }

  if $::operatingsystemmajrelease != "6" {
    fail("This module is for 6 not $::operatingsystemmajrelease")
  }
  ensure_packages(["alsa-plugins-pulseaudio", "at-spi", "control-center", "dbus", "gdm", "gdm-user-switch-applet", "gnome-panel", "gnome-power-manager", "gnome-screensaver", "gnome-session", "gnome-terminal", "gvfs-archive", "gvfs-fuse", "gvfs-smb", "metacity", "nautilus", "NetworkManager", "NetworkManager-gnome", "notification-daemon", "polkit-gnome", "xdg-user-dirs-gtk", "yelp"])

}
