class yumgroup::Redhat::osver7::perl-web::mandatory {

  if $::osfamily == 'RedHat' and $::operatingsystem == 'Fedora' {
    fail('This module has not been verified under Fedora.')
  } elsif $::osfamily != 'RedHat' {
    fail('This module has not been verified under an osfamily other than RedHat')
  }

  if $::operatingsystemmajrelease != "7" {
    fail("This module is for 7 not $::operatingsystemmajrelease")
  }
  ensure_packages(["ImageMagick-perl", "perl-App-cpanminus", "perl-core", "perl-CPAN", "perl-CPANPLUS", "perl-DBD-MySQL", "perl-DBD-SQLite", "perl-LWP-Protocol-https", "perl-Mozilla-CA"])

}
