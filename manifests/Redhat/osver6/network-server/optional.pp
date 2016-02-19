class yumgroup::Redhat::osver6::network-server::optional {

  if $::osfamily == 'RedHat' and $::operatingsystem == 'Fedora' {
    fail('This module has not been verified under Fedora.')
  } elsif $::osfamily != 'RedHat' {
    fail('This module has not been verified under an osfamily other than RedHat')
  }

  if $::operatingsystemmajrelease != "6" {
    fail("This module is for 6 not $::operatingsystemmajrelease")
  }
  ensure_packages(["bind", "bind-chroot", "bind-dyndb-ldap", "dhcp", "dnsmasq", "freeradius", "quagga", "radvd", "rsyslog-gnutls", "rsyslog-gssapi", "rsyslog-mysql", "rsyslog-pgsql", "rsyslog-relp", "syslinux", "tftp-server"])

}
