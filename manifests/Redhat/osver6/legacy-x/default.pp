class yumgroup::Redhat::osver6::legacy-x::default {

  if $::osfamily == 'RedHat' and $::operatingsystem == 'Fedora' {
    fail('This module has not been verified under Fedora.')
  } elsif $::osfamily != 'RedHat' {
    fail('This module has not been verified under an osfamily other than RedHat')
  }

  if $::operatingsystemmajrelease != "6" {
    fail("This module is for 6 not $::operatingsystemmajrelease")
  }
  ensure_packages(["xorg-x11-fonts-100dpi", "xorg-x11-fonts-ISO8859-1-100dpi", "xorg-x11-fonts-misc", "xorg-x11-fonts-Type1"])

}
