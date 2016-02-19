class yumgroup::Redhat::osver7::infiniband::optional {

  if $::osfamily == 'RedHat' and $::operatingsystem == 'Fedora' {
    fail('This module has not been verified under Fedora.')
  } elsif $::osfamily != 'RedHat' {
    fail('This module has not been verified under an osfamily other than RedHat')
  }

  if $::operatingsystemmajrelease != "7" {
    fail("This module is for 7 not $::operatingsystemmajrelease")
  }
  ensure_packages(["compat-dapl", "compat-opensm-libs", "infiniband-diags", "libhfi1", "libibcommon", "libocrdma", "libusnic_verbs", "mstflint", "opensm", "perftest", "qperf", "rdma-ndd", "srptools"])

}
