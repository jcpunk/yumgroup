class yumgroup::Redhat::osver6::general-desktop::default {

  if $::osfamily == 'RedHat' and $::operatingsystem == 'Fedora' {
    fail('This module has not been verified under Fedora.')
  } elsif $::osfamily != 'RedHat' {
    fail('This module has not been verified under an osfamily other than RedHat')
  }

  if $::operatingsystemmajrelease != "6" {
    fail("This module is for 6 not $::operatingsystemmajrelease")
  }
  ensure_packages(["authconfig-gtk", "brasero-nautilus", "cheese", "compiz-gnome", "evince", "evince-dvi", "file-roller", "gcalctool", "gedit", "gnome-backgrounds", "gnome-bluetooth", "gnome-disk-utility", "gnome-power-manager", "gnome-system-monitor", "gnome-themes", "gnome-user-docs", "gnome-user-share", "gnome-utils", "gnote", "gthumb", "gucharmap", "gvfs-afc", "gvfs-gphoto2", "gvfs-obexftp", "mousetweaks", "nautilus-open-terminal", "nautilus-sendto", "PackageKit-gstreamer-plugin", "rhythmbox", "scenery-backgrounds", "seahorse", "SL_desktop_tweaks", "sound-juicer", "system-config-firewall", "system-config-users", "totem", "totem-nautilus"])

}
