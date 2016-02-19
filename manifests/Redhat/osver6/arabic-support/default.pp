class yumgroup::Redhat::osver6::arabic-support::default {

  if $::osfamily == 'RedHat' and $::operatingsystem == 'Fedora' {
    fail('This module has not been verified under Fedora.')
  } elsif $::osfamily != 'RedHat' {
    fail('This module has not been verified under an osfamily other than RedHat')
  }

  if $::operatingsystemmajrelease != "6" {
    fail("This module is for 6 not $::operatingsystemmajrelease")
  }
  ensure_packages(["dejavu-sans-fonts", "dejavu-sans-mono-fonts", "kacst-art-fonts", "kacst-book-fonts", "kacst-decorative-fonts", "kacst-digital-fonts", "kacst-farsi-fonts", "kacst-letter-fonts", "kacst-naskh-fonts", "kacst-office-fonts", "kacst-one-fonts", "kacst-pen-fonts", "kacst-poster-fonts", "kacst-qurn-fonts", "kacst-screen-fonts", "kacst-title-fonts", "kacst-titlel-fonts", "paktype-naqsh-fonts", "paktype-tehreer-fonts"])

}
