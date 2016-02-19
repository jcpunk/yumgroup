class yumgroup::Redhat::osver6::network-tools::optional {

  if $::osfamily == 'RedHat' and $::operatingsystem == 'Fedora' {
    fail('This module has not been verified under Fedora.')
  } elsif $::osfamily != 'RedHat' {
    fail('This module has not been verified under an osfamily other than RedHat')
  }

  if $::operatingsystemmajrelease != "6" {
    fail("This module is for 6 not $::operatingsystemmajrelease")
  }
  ensure_packages(["arptables_jf", "arpwatch", "dropwatch", "ebtables", "ipset", "iptraf", "iptstate", "lksctp-tools", "mipv6-daemon", "mrtg", "netlabel_tools", "NetworkManager-openswan", "nmap", "stunnel", "wireshark"])

}
