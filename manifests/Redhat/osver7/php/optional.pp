class yumgroup::Redhat::osver7::php::optional {

  if $::osfamily == 'RedHat' and $::operatingsystem == 'Fedora' {
    fail('This module has not been verified under Fedora.')
  } elsif $::osfamily != 'RedHat' {
    fail('This module has not been verified under an osfamily other than RedHat')
  }

  if $::operatingsystemmajrelease != "7" {
    fail("This module is for 7 not $::operatingsystemmajrelease")
  }
  ensure_packages(["php-ldap", "php-mysql", "php-odbc", "php-pecl-memcache", "php-pgsql", "php-recode", "php-soap", "php-xmlrpc"])

}
