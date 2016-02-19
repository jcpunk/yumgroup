class yumgroup::Redhat::osver6::identity-management-server::default {

  if $::osfamily == 'RedHat' and $::operatingsystem == 'Fedora' {
    fail('This module has not been verified under Fedora.')
  } elsif $::osfamily != 'RedHat' {
    fail('This module has not been verified under an osfamily other than RedHat')
  }

  if $::operatingsystemmajrelease != "6" {
    fail("This module is for 6 not $::operatingsystemmajrelease")
  }
  ensure_packages(["389-ds-base", "ipa-admintools", "ipa-pki-ca-theme", "ipa-pki-common-theme", "ipa-server", "mod_revocator", "pki-ca", "pki-silent"])

}
