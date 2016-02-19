class yumgroup::Redhat::osver7::network-tools::optional {

  if $::osfamily == 'RedHat' and $::operatingsystem == 'Fedora' {
    fail('This module has not been verified under Fedora.')
  } elsif $::osfamily != 'RedHat' {
    fail('This module has not been verified under an osfamily other than RedHat')
  }

  if $::operatingsystemmajrelease != "7" {
    fail("This module is for 7 not $::operatingsystemmajrelease")
  }
  ensure_packages(["arptables", "arpwatch", "dnssec-trigger", "dropwatch", "ebtables", "ipset", "iptraf-ng", "iptstate", "lksctp-tools", "mipv6-daemon", "mrtg", "netlabel_tools", "netsniff-ng", "NetworkManager-libreswan", "nmap", "stunnel", "wireshark", "wireshark-gnome"])

}
