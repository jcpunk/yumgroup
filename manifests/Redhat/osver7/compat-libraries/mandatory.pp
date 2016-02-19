class yumgroup::Redhat::osver7::compat-libraries::mandatory {

  if $::osfamily == 'RedHat' and $::operatingsystem == 'Fedora' {
    fail('This module has not been verified under Fedora.')
  } elsif $::osfamily != 'RedHat' {
    fail('This module has not been verified under an osfamily other than RedHat')
  }

  if $::operatingsystemmajrelease != "7" {
    fail("This module is for 7 not $::operatingsystemmajrelease")
  }
  ensure_packages(["compat-db47", "compat-glibc", "compat-libcap1", "compat-libf2c-34", "compat-libgfortran-41", "compat-libtiff3", "compat-openldap", "libpng12", "openssl098e"])

}
