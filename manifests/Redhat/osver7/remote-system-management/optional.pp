class yumgroup::Redhat::osver7::remote-system-management::optional {

  if $::osfamily == 'RedHat' and $::operatingsystem == 'Fedora' {
    fail('This module has not been verified under Fedora.')
  } elsif $::osfamily != 'RedHat' {
    fail('This module has not been verified under an osfamily other than RedHat')
  }

  if $::operatingsystemmajrelease != "7" {
    fail("This module is for 7 not $::operatingsystemmajrelease")
  }
  ensure_packages(["openlmi", "openlmi-account-doc", "openlmi-fan", "openlmi-fan-doc", "openlmi-hardware-doc", "openlmi-logicalfile", "openlmi-logicalfile-doc", "openlmi-networking-doc", "openlmi-powermanagement", "openlmi-powermanagement-doc", "openlmi-realmd", "openlmi-realmd-doc", "openlmi-service-doc", "openlmi-software-doc", "openlmi-storage-doc", "openlmi-tools", "openlmi-tools-doc", "openwsman-server", "sblim-cim-client2", "sblim-cmpi-fsvol", "sblim-cmpi-network", "sblim-cmpi-nfsv3", "sblim-cmpi-nfsv4", "sblim-cmpi-params", "sblim-cmpi-sysfs", "sblim-cmpi-syslog", "sblim-gather", "sblim-gather-provider", "sblim-indication_helper", "sblim-sfcb", "sblim-smis-hba", "sblim-wbemcli"])

}
