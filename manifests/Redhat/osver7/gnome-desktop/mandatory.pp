class yumgroup::Redhat::osver7::gnome-desktop::mandatory {

  if $::osfamily == 'RedHat' and $::operatingsystem == 'Fedora' {
    fail('This module has not been verified under Fedora.')
  } elsif $::osfamily != 'RedHat' {
    fail('This module has not been verified under an osfamily other than RedHat')
  }

  if $::operatingsystemmajrelease != "7" {
    fail("This module is for 7 not $::operatingsystemmajrelease")
  }
  ensure_packages(["abrt-desktop", "at-spi2-atk", "at-spi2-core", "avahi", "baobab", "caribou", "caribou-gtk2-module", "caribou-gtk3-module", "cheese", "control-center", "dconf", "empathy", "eog", "evince", "evince-dvi", "evince-nautilus", "file-roller", "file-roller-nautilus", "firewall-config", "firstboot", "fprintd-pam", "gdm", "gedit", "glib-networking", "gnome-backgrounds", "gnome-bluetooth", "gnome-boxes", "gnome-calculator", "gnome-classic-session", "gnome-clocks", "gnome-color-manager", "gnome-contacts", "gnome-dictionary", "gnome-disk-utility", "gnome-documents", "gnome-font-viewer", "gnome-getting-started-docs", "gnome-icon-theme", "gnome-icon-theme-extras", "gnome-icon-theme-symbolic", "gnome-initial-setup", "gnome-packagekit", "gnome-packagekit-updater", "gnome-screenshot", "gnome-session", "gnome-session-xsession", "gnome-settings-daemon", "gnome-shell", "gnome-software", "gnome-system-log", "gnome-system-monitor", "gnome-terminal", "gnome-themes-standard", "gnome-tweak-tool", "gnome-user-docs", "gnome-weather", "gucharmap", "gvfs-afc", "gvfs-afp", "gvfs-archive", "gvfs-fuse", "gvfs-goa", "gvfs-gphoto2", "gvfs-mtp", "gvfs-smb", "initial-setup", "initial-setup-gui", "libcanberra-gtk2", "libcanberra-gtk3", "libproxy-mozjs", "librsvg2", "libsane-hpaio", "metacity", "mousetweaks", "nautilus", "nautilus-open-terminal", "nautilus-sendto", "NetworkManager-libreswan-gnome", "nm-connection-editor", "orca", "PackageKit-command-not-found", "PackageKit-gtk3-module", "sane-backends-drivers-scanners", "seahorse", "setroubleshoot", "sushi", "totem", "totem-nautilus", "unoconv", "vinagre", "vino", "xdg-user-dirs-gtk", "yelp"])

}
