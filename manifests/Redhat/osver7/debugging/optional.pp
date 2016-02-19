class yumgroup::Redhat::osver7::debugging::optional {

  if $::osfamily == 'RedHat' and $::operatingsystem == 'Fedora' {
    fail('This module has not been verified under Fedora.')
  } elsif $::osfamily != 'RedHat' {
    fail('This module has not been verified under an osfamily other than RedHat')
  }

  if $::operatingsystemmajrelease != "7" {
    fail("This module is for 7 not $::operatingsystemmajrelease")
  }
  ensure_packages(["abrt-java-connector", "gdb-gdbserver", "glibc-utils", "memtest86+", "systemtap-client", "systemtap-initscript"])

}
