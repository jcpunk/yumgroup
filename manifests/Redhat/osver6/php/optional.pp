class yumgroup::Redhat::osver6::php::optional {

  if $::osfamily == 'RedHat' and $::operatingsystem == 'Fedora' {
    fail('This module has not been verified under Fedora.')
  } elsif $::osfamily != 'RedHat' {
    fail('This module has not been verified under an osfamily other than RedHat')
  }

  if $::operatingsystemmajrelease != "6" {
    fail("This module is for 6 not $::operatingsystemmajrelease")
  }
  ensure_packages(["php-ldap", "php-mysql", "php-odbc", "php-pecl-apc", "php-pecl-memcache", "php-pgsql", "php-soap", "php-xmlrpc"])

}
