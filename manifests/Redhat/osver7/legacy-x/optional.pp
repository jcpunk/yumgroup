class yumgroup::Redhat::osver7::legacy-x::optional {

  if $::osfamily == 'RedHat' and $::operatingsystem == 'Fedora' {
    fail('This module has not been verified under Fedora.')
  } elsif $::osfamily != 'RedHat' {
    fail('This module has not been verified under an osfamily other than RedHat')
  }

  if $::operatingsystemmajrelease != "7" {
    fail("This module is for 7 not $::operatingsystemmajrelease")
  }
  ensure_packages(["xorg-x11-fonts-75dpi", "xorg-x11-fonts-cyrillic", "xorg-x11-fonts-ethiopic", "xorg-x11-fonts-ISO8859-1-75dpi", "xorg-x11-fonts-ISO8859-14-100dpi", "xorg-x11-fonts-ISO8859-14-75dpi", "xorg-x11-fonts-ISO8859-15-75dpi", "xorg-x11-fonts-ISO8859-2-100dpi", "xorg-x11-fonts-ISO8859-2-75dpi", "xorg-x11-fonts-ISO8859-9-100dpi", "xorg-x11-fonts-ISO8859-9-75dpi"])

}
