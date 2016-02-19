class yumgroup::Redhat::osver6::debugging::optional {

  if $::osfamily == 'RedHat' and $::operatingsystem == 'Fedora' {
    fail('This module has not been verified under Fedora.')
  } elsif $::osfamily != 'RedHat' {
    fail('This module has not been verified under an osfamily other than RedHat')
  }

  if $::operatingsystemmajrelease != "6" {
    fail("This module is for 6 not $::operatingsystemmajrelease")
  }
  ensure_packages(["abrt-addon-ccpp", "abrt-addon-python", "abrt-cli", "flightrecorder", "gdb-gdbserver", "glibc-utils", "lslk", "memtest86+", "ps_mem", "systemtap-client", "systemtap-initscript"])

}
