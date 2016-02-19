class yumgroup::Redhat::osver7::network-file-system-client::mandatory {

  if $::osfamily == 'RedHat' and $::operatingsystem == 'Fedora' {
    fail('This module has not been verified under Fedora.')
  } elsif $::osfamily != 'RedHat' {
    fail('This module has not been verified under an osfamily other than RedHat')
  }

  if $::operatingsystemmajrelease != "7" {
    fail("This module is for 7 not $::operatingsystemmajrelease")
  }
  ensure_packages(["autofs", "cgdcbxd", "cifs-utils", "device-mapper-multipath", "fcoe-utils", "glusterfs-fuse", "gssproxy", "iscsi-initiator-utils", "lldpad", "nfs-utils", "nfs4-acl-tools", "samba-client", "targetcli"])

}
