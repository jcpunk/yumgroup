class yumgroup::Redhat::osver7::input-methods::default {

  if $::osfamily == 'RedHat' and $::operatingsystem == 'Fedora' {
    fail('This module has not been verified under Fedora.')
  } elsif $::osfamily != 'RedHat' {
    fail('This module has not been verified under an osfamily other than RedHat')
  }

  if $::operatingsystemmajrelease != "7" {
    fail("This module is for 7 not $::operatingsystemmajrelease")
  }
  ensure_packages(["ibus-chewing", "ibus-hangul", "ibus-kkc", "ibus-libpinyin", "ibus-m17n", "ibus-rawcode", "ibus-sayura", "ibus-table", "ibus-table-chinese", "m17n-contrib", "m17n-db"])

}
