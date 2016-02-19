class yumgroup::Redhat::osver6::japanese-support::default {

  if $::osfamily == 'RedHat' and $::operatingsystem == 'Fedora' {
    fail('This module has not been verified under Fedora.')
  } elsif $::osfamily != 'RedHat' {
    fail('This module has not been verified under an osfamily other than RedHat')
  }

  if $::operatingsystemmajrelease != "6" {
    fail("This module is for 6 not $::operatingsystemmajrelease")
  }
  ensure_packages(["ipa-gothic-fonts", "ipa-mincho-fonts", "ipa-pgothic-fonts", "ipa-pmincho-fonts", "vlgothic-fonts", "vlgothic-p-fonts"])

}
