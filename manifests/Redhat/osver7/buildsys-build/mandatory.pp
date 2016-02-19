class yumgroup::Redhat::osver7::buildsys-build::mandatory {

  if $::osfamily == 'RedHat' and $::operatingsystem == 'Fedora' {
    fail('This module has not been verified under Fedora.')
  } elsif $::osfamily != 'RedHat' {
    fail('This module has not been verified under an osfamily other than RedHat')
  }

  if $::operatingsystemmajrelease != "7" {
    fail("This module is for 7 not $::operatingsystemmajrelease")
  }
  ensure_packages(["bash", "bzip2", "coreutils", "cpio", "diffutils", "findutils", "gawk", "gcc", "gcc-c++", "grep", "gzip", "info", "make", "patch", "redhat-rpm-config", "rpm-build", "scl-utils-build", "sed", "shadow-utils", "system-release", "tar", "unzip", "util-linux", "which", "xz"])

}
