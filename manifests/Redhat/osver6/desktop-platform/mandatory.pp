class yumgroup::Redhat::osver6::desktop-platform::mandatory {

  if $::osfamily == 'RedHat' and $::operatingsystem == 'Fedora' {
    fail('This module has not been verified under Fedora.')
  } elsif $::osfamily != 'RedHat' {
    fail('This module has not been verified under an osfamily other than RedHat')
  }

  if $::operatingsystemmajrelease != "6" {
    fail("This module is for 6 not $::operatingsystemmajrelease")
  }
  ensure_packages(["atk", "cairo", "dbus", "dbus-libs", "fontconfig", "freetype", "glib2", "gtk2", "libICE", "libjpeg-turbo", "libpng", "libSM", "libX11", "libXext", "libXft", "libXi", "libxml2", "libXrender", "libXt", "libXtst", "mesa-libGL", "mesa-libGLU", "pango", "qt", "qt3", "redhat-lsb-graphics", "redhat-lsb-printing"])

}
