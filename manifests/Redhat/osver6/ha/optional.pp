class yumgroup::Redhat::osver6::ha::optional {

  if $::osfamily == 'RedHat' and $::operatingsystem == 'Fedora' {
    fail('This module has not been verified under Fedora.')
  } elsif $::osfamily != 'RedHat' {
    fail('This module has not been verified under an osfamily other than RedHat')
  }

  if $::operatingsystemmajrelease != "6" {
    fail("This module is for 6 not $::operatingsystemmajrelease")
  }
  ensure_packages(["cluster-cim", "cluster-glue-libs-devel", "cluster-snmp", "clusterlib-devel", "corosynclib-devel", "fence-virtd-checkpoint", "foghorn", "libesmtp-devel", "openaislib-devel", "pacemaker", "pacemaker-libs-devel", "python-repoze-what-quickstart"])

}
