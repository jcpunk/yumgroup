class yumgroup::Redhat::osver7::perl-runtime::optional {

  if $::osfamily == 'RedHat' and $::operatingsystem == 'Fedora' {
    fail('This module has not been verified under Fedora.')
  } elsif $::osfamily != 'RedHat' {
    fail('This module has not been verified under an osfamily other than RedHat')
  }

  if $::operatingsystemmajrelease != "7" {
    fail("This module is for 7 not $::operatingsystemmajrelease")
  }
  ensure_packages(["perl-App-cpanminus", "perl-Date-Calc", "perl-Date-Manip", "perl-DateTime", "perl-DateTime-Format-DateParse", "perl-DateTime-Locale", "perl-DateTime-TimeZone", "perl-DBD-SQLite", "perl-homedir", "perl-LDAP", "perl-Mozilla-LDAP"])

}
