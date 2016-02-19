class yumgroup::Redhat::osver7::core::default {

  if $::osfamily == 'RedHat' and $::operatingsystem == 'Fedora' {
    fail('This module has not been verified under Fedora.')
  } elsif $::osfamily != 'RedHat' {
    fail('This module has not been verified under an osfamily other than RedHat')
  }

  if $::operatingsystemmajrelease != "7" {
    fail("This module is for 7 not $::operatingsystemmajrelease")
  }
  ensure_packages(["aic94xx-firmware", "alsa-firmware", "dracut-config-rescue", "ivtv-firmware", "iwl100-firmware", "iwl1000-firmware", "iwl105-firmware", "iwl135-firmware", "iwl2000-firmware", "iwl2030-firmware", "iwl3160-firmware", "iwl3945-firmware", "iwl4965-firmware", "iwl5000-firmware", "iwl5150-firmware", "iwl6000-firmware", "iwl6000g2a-firmware", "iwl6000g2b-firmware", "iwl6050-firmware", "iwl7260-firmware", "iwl7265-firmware", "kernel", "kernel-tools", "libsysfs", "linux-firmware", "microcode_ctl", "NetworkManager", "NetworkManager-team", "NetworkManager-tui", "postfix", "rdma", "yum-conf-extras", "yum-conf-repos", "yum-conf-sl7x", "yum-cron"])

}
