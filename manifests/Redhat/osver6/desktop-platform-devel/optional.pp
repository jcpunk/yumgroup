class yumgroup::Redhat::osver6::desktop-platform-devel::optional {

  if $::osfamily == 'RedHat' and $::operatingsystem == 'Fedora' {
    fail('This module has not been verified under Fedora.')
  } elsif $::osfamily != 'RedHat' {
    fail('This module has not been verified under an osfamily other than RedHat')
  }

  if $::operatingsystemmajrelease != "6" {
    fail("This module is for 6 not $::operatingsystemmajrelease")
  }
  ensure_packages(["desktop-file-utils", "glade3", "gnome-common", "gnome-devel-docs", "gtk2-devel-docs", "kdesdk", "qt-doc"])

}
