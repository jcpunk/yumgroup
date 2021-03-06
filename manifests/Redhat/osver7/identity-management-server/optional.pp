class yumgroup::Redhat::osver7::identity-management-server::optional {

  if $::osfamily == 'RedHat' and $::operatingsystem == 'Fedora' {
    fail('This module has not been verified under Fedora.')
  } elsif $::osfamily != 'RedHat' {
    fail('This module has not been verified under an osfamily other than RedHat')
  }

  if $::operatingsystemmajrelease != "7" {
    fail("This module is for 7 not $::operatingsystemmajrelease")
  }
  ensure_packages(["bind-pkcs11", "bind-pkcs11-utils", "ipa-server-dns", "ipa-server-trust-ad", "nuxwdog", "slapi-nis"])

}
