class yumgroup::Redhat::osver7::legacy-unix::optional {

  if $::osfamily == 'RedHat' and $::operatingsystem == 'Fedora' {
    fail('This module has not been verified under Fedora.')
  } elsif $::osfamily != 'RedHat' {
    fail('This module has not been verified under an osfamily other than RedHat')
  }

  if $::operatingsystemmajrelease != "7" {
    fail("This module is for 7 not $::operatingsystemmajrelease")
  }
  ensure_packages(["authd", "cups-lpd", "finger", "finger-server", "ksh", "mksh", "ncompress", "rsh", "rsh-server", "rusers", "rusers-server", "rwho", "talk", "talk-server", "tcp_wrappers", "telnet", "telnet-server", "tftp", "xinetd", "ypbind", "ypserv"])

}
