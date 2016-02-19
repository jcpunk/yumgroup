class yumgroup::Redhat::osver6::kde-desktop::default {

  if $::osfamily == 'RedHat' and $::operatingsystem == 'Fedora' {
    fail('This module has not been verified under Fedora.')
  } elsif $::osfamily != 'RedHat' {
    fail('This module has not been verified under an osfamily other than RedHat')
  }

  if $::operatingsystemmajrelease != "6" {
    fail("This module is for 6 not $::operatingsystemmajrelease")
  }
  ensure_packages(["k3b", "kcoloredit", "kdeadmin", "kdegames", "kdegraphics", "kdemultimedia", "kdenetwork", "kdepim", "kdepim-runtime", "kdeplasma-addons", "kdeutils", "kdm", "kiconedit", "kipi-plugins", "kmid", "konq-plugins", "ksig", "ksshaskpass", "NetworkManager-gnome", "pinentry-qt", "SL_desktop_tweaks"])

}
