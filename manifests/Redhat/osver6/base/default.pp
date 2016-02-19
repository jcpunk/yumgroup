class yumgroup::Redhat::osver6::base::default {

  if $::osfamily == 'RedHat' and $::operatingsystem == 'Fedora' {
    fail('This module has not been verified under Fedora.')
  } elsif $::osfamily != 'RedHat' {
    fail('This module has not been verified under an osfamily other than RedHat')
  }

  if $::operatingsystemmajrelease != "6" {
    fail("This module is for 6 not $::operatingsystemmajrelease")
  }
  ensure_packages(["acpid", "b43-fwcutter", "biosdevname", "blktrace", "bridge-utils", "bzip2", "cpuspeed", "cryptsetup-luks", "dmraid", "dosfstools", "eject", "ethtool", "fprintd-pam", "gnupg2", "hunspell", "hunspell-en", "irqbalance", "ledmon", "libaio", "lvm2", "man-pages", "man-pages-overrides", "mdadm", "microcode_ctl", "mlocate", "mtr", "nano", "ntp", "ntpdate", "openssh-clients", "pam_passwdqc", "pcmciautils", "pinfo", "plymouth", "pm-utils", "prelink", "rdate", "rdma", "readahead", "rfkill", "rng-tools", "rsync", "scl-utils", "setuptool", "sl-release-notes", "smartmontools", "sos", "strace", "sysstat", "system-config-firewall-tui", "system-config-network-tui", "systemtap-runtime", "tcpdump", "tcsh", "time", "unzip", "usbutils", "vconfig", "vim-enhanced", "virt-what", "wget", "which", "wireless-tools", "words", "xz", "yum-plugin-security", "yum-utils", "zip"])

}
