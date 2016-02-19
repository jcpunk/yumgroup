class yumgroup::Redhat::osver6::base::optional {

  if $::osfamily == 'RedHat' and $::operatingsystem == 'Fedora' {
    fail('This module has not been verified under Fedora.')
  } elsif $::osfamily != 'RedHat' {
    fail('This module has not been verified under an osfamily other than RedHat')
  }

  if $::operatingsystemmajrelease != "6" {
    fail("This module is for 6 not $::operatingsystemmajrelease")
  }
  ensure_packages(["abrt-addon-ccpp", "abrt-addon-kerneloops", "abrt-addon-python", "abrt-cli", "audispd-plugins", "brltty", "convmv", "cpupowerutils", "cryptsetup-reencrypt", "device-mapper-persistent-data", "dos2unix", "dumpet", "ecryptfs-utils", "edac-utils", "gdisk", "genisoimage", "gpm", "kabi-yum-plugins", "kernel-doc", "linuxptp", "logwatch", "mkbootdisk", "mtools", "ncurses-term", "nss_db", "oddjob", "pax", "PyPAM", "python-dmidecode", "python-volume_key", "rsyslog-gnutls", "rsyslog-gssapi", "rsyslog-relp", "sgpio", "sox", "squashfs-tools", "star", "tboot", "tunctl", "udftools", "unix2dos", "uuidd", "volume_key", "wodim", "x86info", "yum-plugin-aliases", "yum-plugin-changelog", "yum-plugin-downloadonly", "yum-plugin-protect-packages", "yum-plugin-tmprepo", "yum-plugin-verify", "yum-plugin-versionlock", "yum-presto", "zsh"])

}
