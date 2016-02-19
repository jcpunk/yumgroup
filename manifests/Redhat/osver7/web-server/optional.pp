class yumgroup::Redhat::osver7::web-server::optional {

  if $::osfamily == 'RedHat' and $::operatingsystem == 'Fedora' {
    fail('This module has not been verified under Fedora.')
  } elsif $::osfamily != 'RedHat' {
    fail('This module has not been verified under an osfamily other than RedHat')
  }

  if $::operatingsystemmajrelease != "7" {
    fail("This module is for 7 not $::operatingsystemmajrelease")
  }
  ensure_packages(["certmonger", "libmemcached", "memcached", "mod_auth_kerb", "mod_auth_mellon", "mod_nss", "mod_revocator", "mod_security", "mod_security_crs", "perl-CGI", "perl-CGI-Session", "python-memcached", "squid"])

}
