class yumgroup::Redhat::osver7::core::optional {

  if $::osfamily == 'RedHat' and $::operatingsystem == 'Fedora' {
    fail('This module has not been verified under Fedora.')
  } elsif $::osfamily != 'RedHat' {
    fail('This module has not been verified under an osfamily other than RedHat')
  }

  if $::operatingsystemmajrelease != "7" {
    fail("This module is for 7 not $::operatingsystemmajrelease")
  }
  ensure_packages(["dracut-config-generic", "dracut-fips", "dracut-fips-aesni", "dracut-network", "NetworkManager-config-server", "openssh-keycat", "selinux-policy-mls", "tboot"])

}
