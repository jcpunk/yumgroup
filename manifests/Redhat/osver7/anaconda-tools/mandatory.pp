class yumgroup::Redhat::osver7::anaconda-tools::mandatory {

  if $::osfamily == 'RedHat' and $::operatingsystem == 'Fedora' {
    fail('This module has not been verified under Fedora.')
  } elsif $::osfamily != 'RedHat' {
    fail('This module has not been verified under an osfamily other than RedHat')
  }

  if $::operatingsystemmajrelease != "7" {
    fail("This module is for 7 not $::operatingsystemmajrelease")
  }
  ensure_packages(["authconfig", "btrfs-progs", "chkconfig", "chrony", "cryptsetup", "device-mapper-multipath", "dmraid", "dosfstools", "dracut-network", "e2fsprogs", "efibootmgr", "fcoe-utils", "firewalld", "gfs2-utils", "grub2", "grub2-efi", "iscsi-initiator-utils", "lvm2", "mdadm", "shim", "system-config-firewall-base", "tboot", "tmux", "xfsprogs"])

}
