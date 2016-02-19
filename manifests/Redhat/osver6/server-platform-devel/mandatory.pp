class yumgroup::Redhat::osver6::server-platform-devel::mandatory {

  if $::osfamily == 'RedHat' and $::operatingsystem == 'Fedora' {
    fail('This module has not been verified under Fedora.')
  } elsif $::osfamily != 'RedHat' {
    fail('This module has not been verified under an osfamily other than RedHat')
  }

  if $::operatingsystemmajrelease != "6" {
    fail("This module is for 6 not $::operatingsystemmajrelease")
  }
  ensure_packages(["db4-devel", "dbus-devel", "glibc-devel", "krb5-devel", "libstdc++-devel", "libvirt-devel", "libvirt-java-devel", "ncurses-devel", "nss-devel", "openldap-devel", "openssl-devel", "pam-devel", "zlib-devel"])

}
