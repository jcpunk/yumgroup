class yumgroup::Redhat::osver6::input-methods::default {

  if $::osfamily == 'RedHat' and $::operatingsystem == 'Fedora' {
    fail('This module has not been verified under Fedora.')
  } elsif $::osfamily != 'RedHat' {
    fail('This module has not been verified under an osfamily other than RedHat')
  }

  if $::operatingsystemmajrelease != "6" {
    fail("This module is for 6 not $::operatingsystemmajrelease")
  }
  ensure_packages(["ibus-anthy", "ibus-chewing", "ibus-hangul", "ibus-m17n", "ibus-pinyin", "ibus-rawcode", "ibus-sayura", "ibus-table-additional", "m17n-contrib-assamese", "m17n-contrib-bengali", "m17n-contrib-gujarati", "m17n-contrib-hindi", "m17n-contrib-kannada", "m17n-contrib-maithili", "m17n-contrib-malayalam", "m17n-contrib-marathi", "m17n-contrib-oriya", "m17n-contrib-punjabi", "m17n-contrib-tamil", "m17n-contrib-telugu", "m17n-contrib-urdu", "m17n-db-sinhala", "m17n-db-thai"])

}
