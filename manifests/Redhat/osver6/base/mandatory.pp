class yumgroup::Redhat::osver6::base::mandatory {

  if $::osfamily == 'RedHat' and $::operatingsystem == 'Fedora' {
    fail('This module has not been verified under Fedora.')
  } elsif $::osfamily != 'RedHat' {
    fail('This module has not been verified under an osfamily other than RedHat')
  }

  if $::operatingsystemmajrelease != "6" {
    fail("This module is for 6 not $::operatingsystemmajrelease")
  }
  ensure_packages(["alsa-utils", "at", "authconfig", "bc", "bind-utils", "crontabs", "cyrus-sasl-plain", "dbus", "ed", "file", "logrotate", "lsof", "man", "ntsysv", "parted", "pciutils", "psacct", "quota", "setserial", "sl-indexhtml", "tmpwatch", "traceroute"])

}
