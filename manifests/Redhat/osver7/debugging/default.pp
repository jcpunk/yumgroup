class yumgroup::Redhat::osver7::debugging::default {

  if $::osfamily == 'RedHat' and $::operatingsystem == 'Fedora' {
    fail('This module has not been verified under Fedora.')
  } elsif $::osfamily != 'RedHat' {
    fail('This module has not been verified under an osfamily other than RedHat')
  }

  if $::operatingsystemmajrelease != "7" {
    fail("This module is for 7 not $::operatingsystemmajrelease")
  }
  ensure_packages(["abrt-addon-ccpp", "abrt-addon-python", "abrt-cli", "crash", "crash-gcore-command", "crash-trace-command", "elfutils", "kernel-tools", "libreport-plugin-mailx", "ltrace", "memstomp", "ps_mem", "trace-cmd", "valgrind"])

}
