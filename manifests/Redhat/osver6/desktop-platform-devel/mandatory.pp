class yumgroup::Redhat::osver6::desktop-platform-devel::mandatory {

  if $::osfamily == 'RedHat' and $::operatingsystem == 'Fedora' {
    fail('This module has not been verified under Fedora.')
  } elsif $::osfamily != 'RedHat' {
    fail('This module has not been verified under an osfamily other than RedHat')
  }

  if $::operatingsystemmajrelease != "6" {
    fail("This module is for 6 not $::operatingsystemmajrelease")
  }
  ensure_packages(["atk-devel", "cairo-devel", "dbus-devel", "fontconfig-devel", "freetype-devel", "glib2-devel", "gtk2-devel", "libICE-devel", "libjpeg-turbo-devel", "libpng-devel", "libSM-devel", "libX11-devel", "libXext-devel", "libXft-devel", "libXi-devel", "libxml2-devel", "libXrender-devel", "libXt-devel", "libXtst-devel", "mesa-libGL-devel", "mesa-libGLU-devel", "mesa-libGLw-devel", "pango-devel", "qt-devel", "qt3-devel", "xorg-x11-docs"])

}
