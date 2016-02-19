class yumgroup::Redhat::osver7::perl-runtime::default {

  if $::osfamily == 'RedHat' and $::operatingsystem == 'Fedora' {
    fail('This module has not been verified under Fedora.')
  } elsif $::osfamily != 'RedHat' {
    fail('This module has not been verified under an osfamily other than RedHat')
  }

  if $::operatingsystemmajrelease != "7" {
    fail("This module is for 7 not $::operatingsystemmajrelease")
  }
  ensure_packages(["perl-core", "perl-Crypt-SSLeay", "perl-XML-Dumper", "perl-XML-Grove", "perl-XML-Twig"])

}
