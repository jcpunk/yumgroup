class yumgroup::Redhat::osver7::multimedia::mandatory {

  if $::osfamily == 'RedHat' and $::operatingsystem == 'Fedora' {
    fail('This module has not been verified under Fedora.')
  } elsif $::osfamily != 'RedHat' {
    fail('This module has not been verified under an osfamily other than RedHat')
  }

  if $::operatingsystemmajrelease != "7" {
    fail("This module is for 7 not $::operatingsystemmajrelease")
  }
  ensure_packages(["alsa-plugins-pulseaudio", "alsa-utils", "dvd+rw-tools", "gstreamer-plugins-bad-free", "gstreamer-plugins-good", "PackageKit-gstreamer-plugin", "pulseaudio", "pulseaudio-module-x11", "pulseaudio-utils", "wodim"])

}
