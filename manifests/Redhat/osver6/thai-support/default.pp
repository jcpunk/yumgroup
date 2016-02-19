class yumgroup::Redhat::osver6::thai-support::default {

  if $::osfamily == 'RedHat' and $::operatingsystem == 'Fedora' {
    fail('This module has not been verified under Fedora.')
  } elsif $::osfamily != 'RedHat' {
    fail('This module has not been verified under an osfamily other than RedHat')
  }

  if $::operatingsystemmajrelease != "6" {
    fail("This module is for 6 not $::operatingsystemmajrelease")
  }
  ensure_packages(["thai-scalable-garuda-fonts", "thai-scalable-kinnari-fonts", "thai-scalable-loma-fonts", "thai-scalable-norasi-fonts", "thai-scalable-purisa-fonts", "thai-scalable-sawasdee-fonts", "thai-scalable-tlwgmono-fonts", "thai-scalable-tlwgtypewriter-fonts", "thai-scalable-tlwgtypist-fonts", "thai-scalable-tlwgtypo-fonts", "thai-scalable-umpush-fonts", "thai-scalable-waree-fonts"])

}
