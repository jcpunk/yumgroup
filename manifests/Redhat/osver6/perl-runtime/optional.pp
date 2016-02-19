class yumgroup::Redhat::osver6::perl-runtime::optional {

  if $::osfamily == 'RedHat' and $::operatingsystem == 'Fedora' {
    fail('This module has not been verified under Fedora.')
  } elsif $::osfamily != 'RedHat' {
    fail('This module has not been verified under an osfamily other than RedHat')
  }

  if $::operatingsystemmajrelease != "6" {
    fail("This module is for 6 not $::operatingsystemmajrelease")
  }
  ensure_packages(["perl-Date-Calc", "perl-Date-Manip", "perl-DBD-SQLite", "perl-Frontier-RPC", "perl-LDAP", "perl-Mozilla-LDAP", "perl-suidperl"])

}
