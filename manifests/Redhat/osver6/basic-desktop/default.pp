class yumgroup::Redhat::osver6::basic-desktop::default {

  if $::osfamily == 'RedHat' and $::operatingsystem == 'Fedora' {
    fail('This module has not been verified under Fedora.')
  } elsif $::osfamily != 'RedHat' {
    fail('This module has not been verified under an osfamily other than RedHat')
  }

  if $::operatingsystemmajrelease != "6" {
    fail("This module is for 6 not $::operatingsystemmajrelease")
  }
  ensure_packages(["control-center-extra", "eog", "gdm-plugin-fingerprint", "gnome-applets", "gnome-media", "gnome-packagekit", "gnome-vfs2-smb", "gok", "openssh-askpass", "orca", "pulseaudio-module-gconf", "pulseaudio-module-x11", "SL_desktop_tweaks", "vino"])

}
