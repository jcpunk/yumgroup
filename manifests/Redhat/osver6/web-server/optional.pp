class yumgroup::Redhat::osver6::web-server::optional {

  if $::osfamily == 'RedHat' and $::operatingsystem == 'Fedora' {
    fail('This module has not been verified under Fedora.')
  } elsif $::osfamily != 'RedHat' {
    fail('This module has not been verified under an osfamily other than RedHat')
  }

  if $::operatingsystemmajrelease != "6" {
    fail("This module is for 6 not $::operatingsystemmajrelease")
  }
  ensure_packages(["certmonger", "libmemcached", "memcached", "mod_authnz_pam", "mod_authz_ldap", "mod_auth_kerb", "mod_auth_mellon", "mod_auth_mysql", "mod_auth_pgsql", "mod_intercept_form_submit", "mod_lookup_identity", "mod_nss", "mod_revocator", "perl-Cache-Memcached", "perl-CGI", "perl-CGI-Session", "python-memcached", "squid"])

}
