class yumgroup::Redhat::osver6::compat-libraries::default {

  if $::osfamily == 'RedHat' and $::operatingsystem == 'Fedora' {
    fail('This module has not been verified under Fedora.')
  } elsif $::osfamily != 'RedHat' {
    fail('This module has not been verified under an osfamily other than RedHat')
  }

  if $::operatingsystemmajrelease != "6" {
    fail("This module is for 6 not $::operatingsystemmajrelease")
  }
  ensure_packages(["compat-db", "compat-expat1", "compat-glibc", "compat-libcap1", "compat-libf2c-34", "compat-libgfortran-41", "compat-libstdc++-296", "compat-libstdc++-33", "compat-libtermcap", "compat-openldap", "compat-openmpi", "compat-openmpi-psm", "compat-opensm-libs", "compat-readline5", "compat-xcb-util", "openssl098e"])

}
