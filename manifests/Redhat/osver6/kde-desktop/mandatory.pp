class yumgroup::Redhat::osver6::kde-desktop::mandatory {

  if $::osfamily == 'RedHat' and $::operatingsystem == 'Fedora' {
    fail('This module has not been verified under Fedora.')
  } elsif $::osfamily != 'RedHat' {
    fail('This module has not been verified under an osfamily other than RedHat')
  }

  if $::operatingsystemmajrelease != "6" {
    fail("This module is for 6 not $::operatingsystemmajrelease")
  }
  ensure_packages(["alsa-plugins-pulseaudio", "kde-settings-pulseaudio", "kdeaccessibility", "kdeartwork-screensavers", "kdebase", "kdebase-workspace", "kdelibs", "xsettings-kde"])

}
