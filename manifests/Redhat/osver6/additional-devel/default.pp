class yumgroup::Redhat::osver6::additional-devel::default {

  if $::osfamily == 'RedHat' and $::operatingsystem == 'Fedora' {
    fail('This module has not been verified under Fedora.')
  } elsif $::osfamily != 'RedHat' {
    fail('This module has not been verified under an osfamily other than RedHat')
  }

  if $::operatingsystemmajrelease != "6" {
    fail("This module is for 6 not $::operatingsystemmajrelease")
  }
  ensure_packages(["alsa-lib-devel", "audit-libs-devel", "binutils-devel", "boost-devel", "bzip2-devel", "cyrus-sasl-devel", "dbus-glib-devel", "elfutils-devel", "elfutils-libelf-devel", "evolution-data-server-devel", "GConf2-devel", "gnome-desktop-devel", "gnome-keyring-devel", "gstreamer-devel", "gvfs-devel", "hmaccalc", "java-1.6.0-openjdk-devel", "java-1.7.0-openjdk-devel", "libacl-devel", "libattr-devel", "libcanberra-devel", "libcap-ng-devel", "libcgroup-devel", "libcurl-devel", "libgnome-devel", "libnotify-devel", "librsvg2-devel", "libselinux-devel", "libsoup-devel", "mysql-devel", "perl-devel", "perl-ExtUtils-MakeMaker", "polkit-devel", "postgresql-devel", "pulseaudio-libs-devel", "pygtk2-devel", "python-devel", "readline-devel", "sqlite-devel", "tbb-devel"])

}
