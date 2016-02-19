class yumgroup::Redhat::osver7::kde-desktop::mandatory {

  if $::osfamily == 'RedHat' and $::operatingsystem == 'Fedora' {
    fail('This module has not been verified under Fedora.')
  } elsif $::osfamily != 'RedHat' {
    fail('This module has not been verified under an osfamily other than RedHat')
  }

  if $::operatingsystemmajrelease != "7" {
    fail("This module is for 7 not $::operatingsystemmajrelease")
  }
  ensure_packages(["abrt-desktop", "akonadi", "akonadi-mysql", "ark", "bluedevil", "colord-kde", "cups-pk-helper", "firewall-config", "firstboot", "gdm", "gwenview", "initial-setup", "initial-setup-gui", "kamera", "kcalc", "kcharselect", "kcm-gtk", "kcm_touchpad", "kcolorchooser", "kde-base-artwork", "kde-baseapps", "kde-plasma-networkmanagement", "kde-print-manager", "kde-runtime", "kde-settings-pulseaudio", "kde-wallpapers", "kde-workspace", "kdeaccessibility", "kdeadmin", "kdegraphics-strigi-analyzer", "kdegraphics-thumbnailers", "kdelibs", "kdenetwork-kdnssd", "kdenetwork-kget", "kdenetwork-krfb", "kdepim", "kdeplasma-addons", "kdeutils-minimal", "kgpg", "kmix", "konsole", "kruler", "ksaneplugin", "ksnapshot", "ksshaskpass", "ksysguard", "kwallet", "kwrite", "okular", "oxygen-gtk", "phonon-backend-gstreamer", "plasma-scriptengine-python", "setroubleshoot", "sweeper", "system-config-date", "xsettings-kde", "xterm"])

}
