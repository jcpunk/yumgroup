class yumgroup::Redhat::osver7::directory-client::optional {

  if $::osfamily == 'RedHat' and $::operatingsystem == 'Fedora' {
    fail('This module has not been verified under Fedora.')
  } elsif $::osfamily != 'RedHat' {
    fail('This module has not been verified under an osfamily other than RedHat')
  }

  if $::operatingsystemmajrelease != "7" {
    fail("This module is for 7 not $::operatingsystemmajrelease")
  }
  ensure_packages(["krb5-pkinit", "krb5-workstation", "ldapjdk", "nscd", "nss-pam-ldapd", "openldap-clients", "pam_krb5", "samba-winbind", "samba-winbind-clients", "sssd-dbus", "sssd-tools"])

}
