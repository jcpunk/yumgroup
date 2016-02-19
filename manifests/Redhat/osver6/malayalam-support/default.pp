class yumgroup::Redhat::osver6::malayalam-support::default {

  if $::osfamily == 'RedHat' and $::operatingsystem == 'Fedora' {
    fail('This module has not been verified under Fedora.')
  } elsif $::osfamily != 'RedHat' {
    fail('This module has not been verified under an osfamily other than RedHat')
  }

  if $::operatingsystemmajrelease != "6" {
    fail("This module is for 6 not $::operatingsystemmajrelease")
  }
  ensure_packages(["iok", "lohit-malayalam-fonts", "samyak-malayalam-fonts", "smc-anjalioldlipi-fonts", "smc-dyuthi-fonts", "smc-kalyani-fonts", "smc-meera-fonts", "smc-rachana-fonts", "smc-raghumalayalam-fonts", "smc-suruma-fonts"])

}
