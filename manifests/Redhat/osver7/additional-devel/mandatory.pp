class yumgroup::Redhat::osver7::additional-devel::mandatory {

  if $::osfamily == 'RedHat' and $::operatingsystem == 'Fedora' {
    fail('This module has not been verified under Fedora.')
  } elsif $::osfamily != 'RedHat' {
    fail('This module has not been verified under an osfamily other than RedHat')
  }

  if $::operatingsystemmajrelease != "7" {
    fail("This module is for 7 not $::operatingsystemmajrelease")
  }
  ensure_packages(["alsa-lib-devel", "audit-libs-devel", "binutils-devel", "boost-devel", "bzip2-devel", "c-ares-devel", "cups-devel", "cyrus-sasl-devel", "dbus-glib-devel", "e2fsprogs-devel", "elfutils-devel", "elfutils-libelf-devel", "evolution-data-server-devel", "expat-devel", "freeglut-devel", "fuse-devel", "gmp-devel", "gnome-desktop3-devel", "gnutls-devel", "gstreamer1-devel", "gstreamer1-plugins-base-devel", "gvfs-devel", "hmaccalc", "httpd-devel", "hunspell-devel", "iptables-devel", "java-1.6.0-openjdk-devel", "java-1.7.0-openjdk-devel", "java-1.8.0-openjdk-devel", "junit", "kde-workspace-devel", "kdegraphics-devel", "kdelibs-devel", "kdenetwork-devel", "kdepim-devel", "kdepimlibs-devel", "kdesdk-devel", "libacl-devel", "libaio-devel", "libatomic-static", "libattr-devel", "libblkid-devel", "libcanberra-devel", "libcap-devel", "libcap-ng-devel", "libcurl-devel", "libdrm-devel", "libgcrypt-devel", "libgnome-keyring-devel", "libgudev1-devel", "libhugetlbfs-devel", "libibverbs-devel", "libitm-devel", "libnl-devel", "libnotify-devel", "libpfm-devel", "librsvg2-devel", "libselinux-devel", "libsoup-devel", "libtiff-devel", "libusbx-devel", "libuuid-devel", "libXau-devel", "libXaw-devel", "libXinerama-devel", "libXmu-devel", "libXpm-devel", "libXrandr-devel", "libxslt-devel", "mariadb-devel", "motif-devel", "mpfr-devel", "net-snmp-devel", "numactl-devel", "openlmi-providers-devel", "papi-devel", "pcre-devel", "perl-App-cpanminus", "perl-devel", "perl-ExtUtils-MakeMaker", "perl-homedir", "perl-Test-Pod", "perl-Test-Pod-Coverage", "polkit-devel", "popt-devel", "postgresql-devel", "pulseaudio-libs-devel", "pygobject3-devel", "PyQt4-devel", "python-devel", "python-setuptools", "qt-mysql", "qt-odbc", "qt-postgresql", "qt3-MySQL", "qt3-ODBC", "qt3-PostgreSQL", "readline-devel", "sane-backends-devel", "SDL-devel", "sqlite-devel", "startup-notification-devel", "systemd-devel", "tbb-devel", "tcl-devel", "tcp_wrappers-devel", "tk-devel", "unique3-devel", "unixODBC-devel", "xorg-x11-proto-devel", "xz-devel"])

}
