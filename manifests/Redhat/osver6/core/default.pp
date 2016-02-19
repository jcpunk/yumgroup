class yumgroup::Redhat::osver6::core::default {

  if $::osfamily == 'RedHat' and $::operatingsystem == 'Fedora' {
    fail('This module has not been verified under Fedora.')
  } elsif $::osfamily != 'RedHat' {
    fail('This module has not been verified under an osfamily other than RedHat')
  }

  if $::operatingsystemmajrelease != "6" {
    fail("This module is for 6 not $::operatingsystemmajrelease")
  }
  ensure_packages(["aic94xx-firmware", "atmel-firmware", "b43-openfwwf", "bfa-firmware", "efibootmgr", "grub", "ipw2100-firmware", "ipw2200-firmware", "ivtv-firmware", "iwl100-firmware", "iwl1000-firmware", "iwl3945-firmware", "iwl4965-firmware", "iwl5000-firmware", "iwl5150-firmware", "iwl6000-firmware", "iwl6000g2a-firmware", "iwl6050-firmware", "kernel-firmware", "kexec-tools", "libertas-usb8388-firmware", "netxen-firmware", "postfix", "ql2100-firmware", "ql2200-firmware", "ql23xx-firmware", "ql2400-firmware", "ql2500-firmware", "rt61pci-firmware", "rt73usb-firmware", "xorg-x11-drv-ati-firmware", "yum-conf-sl6x", "zd1211-firmware"])

}
