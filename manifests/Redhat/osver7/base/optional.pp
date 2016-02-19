class yumgroup::Redhat::osver7::base::optional {

  if $::osfamily == 'RedHat' and $::operatingsystem == 'Fedora' {
    fail('This module has not been verified under Fedora.')
  } elsif $::osfamily != 'RedHat' {
    fail('This module has not been verified under an osfamily other than RedHat')
  }

  if $::operatingsystemmajrelease != "7" {
    fail("This module is for 7 not $::operatingsystemmajrelease")
  }
  ensure_packages(["acpid", "alsa-utils", "audispd-plugins", "augeas", "brltty", "ceph-common", "cryptsetup-reencrypt", "device-mapper-persistent-data", "dos2unix", "dumpet", "genisoimage", "gpm", "i2c-tools", "kabi-yum-plugins", "kernel-tools", "libatomic", "libcgroup", "libcgroup-tools", "libitm", "libstoragemgmt-netapp-plugin", "libstoragemgmt-nstor-plugin", "libstoragemgmt-smis-plugin", "libstoragemgmt-targetd-plugin", "libstoragemgmt-udev", "linuxptp", "logwatch", "microcode_ctl", "mkbootdisk", "mtools", "ncurses-term", "NetworkManager-config-server", "ntp", "oddjob", "pax", "pesign", "prelink", "PyPAM", "python-volume_key", "redhat-lsb-core", "redhat-upgrade-dracut", "rsyslog-gnutls", "rsyslog-gssapi", "rsyslog-relp", "sgpio", "sox", "squashfs-tools", "star", "tmpwatch", "udftools", "uuidd", "volume_key", "wodim", "x86info", "yum-plugin-aliases", "yum-plugin-changelog", "yum-plugin-tmprepo", "yum-plugin-verify", "yum-plugin-versionlock", "zsh"])

}
