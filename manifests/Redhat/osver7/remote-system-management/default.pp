class yumgroup::Redhat::osver7::remote-system-management::default {

  if $::osfamily == 'RedHat' and $::operatingsystem == 'Fedora' {
    fail('This module has not been verified under Fedora.')
  } elsif $::osfamily != 'RedHat' {
    fail('This module has not been verified under an osfamily other than RedHat')
  }

  if $::operatingsystemmajrelease != "7" {
    fail("This module is for 7 not $::operatingsystemmajrelease")
  }
  ensure_packages(["net-snmp", "net-snmp-utils", "openlmi-account", "openlmi-hardware", "openlmi-networking", "openlmi-providers", "openlmi-service", "openlmi-software", "openlmi-storage", "openslp-server", "openwsman-client", "tog-pegasus", "wsmancli"])

}
