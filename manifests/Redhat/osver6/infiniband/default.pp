class yumgroup::Redhat::osver6::infiniband::default {

  if $::osfamily == 'RedHat' and $::operatingsystem == 'Fedora' {
    fail('This module has not been verified under Fedora.')
  } elsif $::osfamily != 'RedHat' {
    fail('This module has not been verified under an osfamily other than RedHat')
  }

  if $::operatingsystemmajrelease != "6" {
    fail("This module is for 6 not $::operatingsystemmajrelease")
  }
  ensure_packages(["dapl", "ibacm", "ibsim", "ibutils", "libcxgb3", "libibmad", "libibumad", "libipathverbs", "libmlx4", "libmlx5", "libmthca", "libnes", "rds-tools"])

}
