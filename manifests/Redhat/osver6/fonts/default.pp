class yumgroup::Redhat::osver6::fonts::default {

  if $::osfamily == 'RedHat' and $::operatingsystem == 'Fedora' {
    fail('This module has not been verified under Fedora.')
  } elsif $::osfamily != 'RedHat' {
    fail('This module has not been verified under an osfamily other than RedHat')
  }

  if $::operatingsystemmajrelease != "6" {
    fail("This module is for 6 not $::operatingsystemmajrelease")
  }
  ensure_packages(["abyssinica-fonts", "cjkuni-uming-fonts", "dejavu-sans-fonts", "dejavu-sans-mono-fonts", "dejavu-serif-fonts", "google-crosextra-caladea-fonts", "google-crosextra-carlito-fonts", "jomolhari-fonts", "khmeros-base-fonts", "kurdit-unikurd-web-fonts", "liberation-mono-fonts", "liberation-sans-fonts", "liberation-serif-fonts", "lklug-fonts", "lohit-assamese-fonts", "lohit-bengali-fonts", "lohit-devanagari-fonts", "lohit-gujarati-fonts", "lohit-kannada-fonts", "lohit-oriya-fonts", "lohit-punjabi-fonts", "lohit-tamil-fonts", "lohit-telugu-fonts", "madan-fonts", "paktype-naqsh-fonts", "paktype-tehreer-fonts", "sil-padauk-fonts", "smc-meera-fonts", "stix-fonts", "thai-scalable-waree-fonts", "tibetan-machine-uni-fonts", "un-core-dotum-fonts", "vlgothic-fonts", "wqy-zenhei-fonts"])

}
