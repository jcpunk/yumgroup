class yumgroup::Redhat::osver7::infiniband::default {

  if $::osfamily == 'RedHat' and $::operatingsystem == 'Fedora' {
    fail('This module has not been verified under Fedora.')
  } elsif $::osfamily != 'RedHat' {
    fail('This module has not been verified under an osfamily other than RedHat')
  }

  if $::operatingsystemmajrelease != "7" {
    fail("This module is for 7 not $::operatingsystemmajrelease")
  }
  ensure_packages(["dapl", "ibacm", "ibutils", "libcxgb3", "libcxgb4", "libibmad", "libibumad", "libipathverbs", "libmlx4", "libmlx5", "libmthca", "libnes"])

}
