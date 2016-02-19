class yumgroup::Redhat::osver6::resilient-storage::optional {

  if $::osfamily == 'RedHat' and $::operatingsystem == 'Fedora' {
    fail('This module has not been verified under Fedora.')
  } elsif $::osfamily != 'RedHat' {
    fail('This module has not been verified under an osfamily other than RedHat')
  }

  if $::operatingsystemmajrelease != "6" {
    fail("This module is for 6 not $::operatingsystemmajrelease")
  }
  ensure_packages(["cluster-glue-libs-devel", "clusterlib-devel", "cmirror", "corosynclib-devel", "ctdb", "ctdb-devel", "fence-virtd-checkpoint", "libesmtp-devel", "openaislib-devel", "pacemaker-libs-devel"])

}
