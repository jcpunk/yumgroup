class yumgroup::Redhat::osver7::base::default {

  if $::osfamily == 'RedHat' and $::operatingsystem == 'Fedora' {
    fail('This module has not been verified under Fedora.')
  } elsif $::osfamily != 'RedHat' {
    fail('This module has not been verified under an osfamily other than RedHat')
  }

  if $::operatingsystemmajrelease != "7" {
    fail("This module is for 7 not $::operatingsystemmajrelease")
  }
  ensure_packages(["abrt-addon-ccpp", "abrt-addon-python", "abrt-cli", "abrt-console-notification", "bash-completion", "blktrace", "bridge-utils", "bzip2", "chrony", "cryptsetup", "dmraid", "dosfstools", "ethtool", "fprintd-pam", "gnupg2", "hunspell", "hunspell-en", "kpatch", "ledmon", "libaio", "libreport-plugin-mailx", "libstoragemgmt", "lvm2", "man-pages", "man-pages-overrides", "mdadm", "mlocate", "mtr", "nano", "ntpdate", "pinfo", "plymouth", "pm-utils", "rdate", "rfkill", "rng-tools", "rsync", "scl-utils", "setuptool", "smartmontools", "sos", "sssd-client", "strace", "sysstat", "systemtap-runtime", "tcpdump", "tcsh", "teamd", "time", "unzip", "usbutils", "vim-enhanced", "virt-what", "wget", "which", "words", "xfsdump", "xz", "yum-cron", "yum-langpacks", "yum-plugin-security", "yum-utils", "zip"])

}
