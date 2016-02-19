class yumgroup::Redhat::osver6::conflicts::mandatory {

  if $::osfamily == 'RedHat' and $::operatingsystem == 'Fedora' {
    fail('This module has not been verified under Fedora.')
  } elsif $::osfamily != 'RedHat' {
    fail('This module has not been verified under an osfamily other than RedHat')
  }

  if $::operatingsystemmajrelease != "6" {
    fail("This module is for 6 not $::operatingsystemmajrelease")
  }
  ensure_packages(["cpupowerutils", "ipa-server", "ipa-server-selinux", "ipa-server-trust-ad", "libcmpiCppImpl0", "openhpi32", "openhpi32-libs", "rsyslog7", "rsyslog7-gnutls", "rsyslog7-gssapi", "rsyslog7-mysql", "rsyslog7-pgsql", "rsyslog7-relp", "samba4", "samba4-client", "samba4-common", "samba4-dc", "samba4-dc-libs", "samba4-devel", "samba4-libs", "samba4-pidl", "samba4-python", "samba4-swat", "samba4-test", "samba4-winbind", "samba4-winbind-clients", "samba4-winbind-krb5-locator"])

}
