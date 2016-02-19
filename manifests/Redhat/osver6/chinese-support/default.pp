class yumgroup::Redhat::osver6::chinese-support::default {

  if $::osfamily == 'RedHat' and $::operatingsystem == 'Fedora' {
    fail('This module has not been verified under Fedora.')
  } elsif $::osfamily != 'RedHat' {
    fail('This module has not been verified under an osfamily other than RedHat')
  }

  if $::operatingsystemmajrelease != "6" {
    fail("This module is for 6 not $::operatingsystemmajrelease")
  }
  ensure_packages(["cjkuni-ukai-fonts", "cjkuni-uming-fonts", "ibus-table-cangjie", "ibus-table-erbi", "ibus-table-wubi", "wqy-zenhei-fonts"])

}
