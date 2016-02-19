class yumgroup::Redhat::osver6::additional-devel::optional {

  if $::osfamily == 'RedHat' and $::operatingsystem == 'Fedora' {
    fail('This module has not been verified under Fedora.')
  } elsif $::osfamily != 'RedHat' {
    fail('This module has not been verified under an osfamily other than RedHat')
  }

  if $::operatingsystemmajrelease != "6" {
    fail("This module is for 6 not $::operatingsystemmajrelease")
  }
  ensure_packages(["cups-devel", "e2fsprogs-devel", "expat-devel", "freeglut-devel", "fuse-devel", "gmp-devel", "gnome-python2-desktop", "gnutls-devel", "gstreamer-plugins-base-devel", "httpd-devel", "hunspell-devel", "iptables-devel", "java-1.8.0-openjdk-devel", "java-gcj-compat-devel", "junit", "kdebase-devel", "kdebase-workspace-devel", "kdegraphics-devel", "kdelibs-apidocs", "kdelibs-devel", "kdemultimedia-devel", "kdenetwork-devel", "kdepim-devel", "kdepimlibs-devel", "kdesdk-devel", "libaio-devel", "libblkid-devel", "libbonobo-devel", "libcap-devel", "libdrm-devel", "libgcrypt-devel", "libglade2-devel", "libgnomeui-devel", "libgudev1-devel", "libhugetlbfs-devel", "libibverbs-devel", "libnl-devel", "libnl3-devel", "libtiff-devel", "libtopology-devel", "libudev-devel", "libusb-devel", "libuuid-devel", "libXau-devel", "libXaw-devel", "libXinerama-devel", "libXmu-devel", "libXpm-devel", "libXrandr-devel", "libxslt-devel", "mpfr-devel", "net-snmp-devel", "numactl-devel", "openmotif-devel", "papi-devel", "pcre-devel", "perl-Test-Pod", "perl-Test-Pod-Coverage", "popt-devel", "PyQt4-devel", "python-setuptools-devel", "sane-backends-devel", "SDL-devel", "snappy-devel", "startup-notification-devel", "tcl-devel", "tcp_wrappers-devel", "tk-devel", "unique-devel", "unixODBC-devel", "xorg-x11-proto-devel", "xz-devel"])

}
