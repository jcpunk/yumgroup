class yumgroup::Redhat::osver6::buildsys-build::mandatory {

  if $::osfamily == 'RedHat' and $::operatingsystem == 'Fedora' {
    fail('This module has not been verified under Fedora.')
  } elsif $::osfamily != 'RedHat' {
    fail('This module has not been verified under an osfamily other than RedHat')
  }

  if $::operatingsystemmajrelease != "6" {
    fail("This module is for 6 not $::operatingsystemmajrelease")
  }
  ensure_packages(["bash", "bzip2", "coreutils", "cpio", "diffutils", "findutils", "gawk", "gcc", "gcc-c++", "grep", "gzip", "info", "make", "patch", "redhat-rpm-config", "rpm-build", "scl-utils-build", "sed", "shadow-utils", "sl-release", "tar", "unzip", "util-linux-ng", "which"])

}
