class yumgroup::Redhat::osver6::system-management-wbem::optional {

  if $::osfamily == 'RedHat' and $::operatingsystem == 'Fedora' {
    fail('This module has not been verified under Fedora.')
  } elsif $::osfamily != 'RedHat' {
    fail('This module has not been verified under an osfamily other than RedHat')
  }

  if $::operatingsystemmajrelease != "6" {
    fail("This module is for 6 not $::operatingsystemmajrelease")
  }
  ensure_packages(["openwsman-server", "sblim-cim-client", "sblim-cim-client2", "sblim-cmpi-dhcp", "sblim-cmpi-dns", "sblim-cmpi-fsvol", "sblim-cmpi-network", "sblim-cmpi-nfsv3", "sblim-cmpi-nfsv4", "sblim-cmpi-params", "sblim-cmpi-samba", "sblim-cmpi-sysfs", "sblim-cmpi-syslog", "sblim-gather", "sblim-gather-provider", "sblim-indication_helper", "sblim-smis-hba", "sblim-tools-libra", "tog-pegasus"])

}
