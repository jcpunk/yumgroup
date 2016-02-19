class yumgroup::Redhat::osver7::base::mandatory {

  if $::osfamily == 'RedHat' and $::operatingsystem == 'Fedora' {
    fail('This module has not been verified under Fedora.')
  } elsif $::osfamily != 'RedHat' {
    fail('This module has not been verified under an osfamily other than RedHat')
  }

  if $::operatingsystemmajrelease != "7" {
    fail("This module is for 7 not $::operatingsystemmajrelease")
  }
  ensure_packages(["acl", "at", "attr", "authconfig", "bc", "bind-utils", "cpio", "crda", "crontabs", "cyrus-sasl-plain", "dbus", "ed", "file", "logrotate", "lsof", "man-db", "net-tools", "ntsysv", "pciutils", "psacct", "quota", "setserial", "sl-indexhtml", "traceroute", "usb_modeswitch"])

}
