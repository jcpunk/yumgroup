class yumgroup::Redhat::osver7::platform-devel::mandatory {

  if $::osfamily == 'RedHat' and $::operatingsystem == 'Fedora' {
    fail('This module has not been verified under Fedora.')
  } elsif $::osfamily != 'RedHat' {
    fail('This module has not been verified under an osfamily other than RedHat')
  }

  if $::operatingsystemmajrelease != "7" {
    fail("This module is for 7 not $::operatingsystemmajrelease")
  }
  ensure_packages(["atk-devel", "cairo-devel", "dbus-devel", "desktop-file-utils", "fontconfig-devel", "freetype-devel", "glib2-devel", "glibc-devel", "gnome-common", "gnome-devel-docs", "gtk2-devel-docs", "gtk3-devel", "krb5-devel", "libdb-devel", "libICE-devel", "libjpeg-turbo-devel", "libpng-devel", "libSM-devel", "libstdc++-devel", "libvirt-devel", "libvirt-java-devel", "libX11-devel", "libXext-devel", "libXft-devel", "libXi-devel", "libxml2-devel", "libXrender-devel", "libXt-devel", "libXtst-devel", "mesa-libGL-devel", "mesa-libGLU-devel", "mesa-libGLw-devel", "ncurses-devel", "nss-devel", "openldap-devel", "openssl-devel", "pam-devel", "pango-devel", "qt-devel", "qt3-devel", "redhat-lsb", "xorg-x11-docs", "zlib-devel"])

}
