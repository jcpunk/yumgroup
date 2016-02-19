class yumgroup::Redhat::osver7::core::mandatory {

  if $::osfamily == 'RedHat' and $::operatingsystem == 'Fedora' {
    fail('This module has not been verified under Fedora.')
  } elsif $::osfamily != 'RedHat' {
    fail('This module has not been verified under an osfamily other than RedHat')
  }

  if $::operatingsystemmajrelease != "7" {
    fail("This module is for 7 not $::operatingsystemmajrelease")
  }
  ensure_packages(["audit", "basesystem", "bash", "biosdevname", "btrfs-progs", "coreutils", "cronie", "curl", "dhclient", "e2fsprogs", "filesystem", "firewalld", "glibc", "hostname", "initscripts", "iproute", "iprutils", "iptables", "iputils", "irqbalance", "kbd", "kexec-tools", "less", "man-db", "ncurses", "openssh-clients", "openssh-server", "parted", "passwd", "plymouth", "policycoreutils", "procps-ng", "rootfiles", "rpm", "rsyslog", "selinux-policy-targeted", "setup", "shadow-utils", "sudo", "systemd", "tar", "tuned", "util-linux", "vim-minimal", "xfsprogs", "yum"])

}
