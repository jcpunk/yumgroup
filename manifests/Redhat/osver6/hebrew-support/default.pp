class yumgroup::Redhat::osver6::hebrew-support::default {

  if $::osfamily == 'RedHat' and $::operatingsystem == 'Fedora' {
    fail('This module has not been verified under Fedora.')
  } elsif $::osfamily != 'RedHat' {
    fail('This module has not been verified under an osfamily other than RedHat')
  }

  if $::operatingsystemmajrelease != "6" {
    fail("This module is for 6 not $::operatingsystemmajrelease")
  }
  ensure_packages(["culmus-aharoni-clm-fonts", "culmus-caladings-clm-fonts", "culmus-david-clm-fonts", "culmus-drugulin-clm-fonts", "culmus-ellinia-clm-fonts", "culmus-frank-ruehl-clm-fonts", "culmus-miriam-clm-fonts", "culmus-miriam-mono-clm-fonts", "culmus-nachlieli-clm-fonts", "culmus-yehuda-clm-fonts"])

}
