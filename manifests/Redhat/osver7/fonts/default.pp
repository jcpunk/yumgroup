class yumgroup::Redhat::osver7::fonts::default {

  if $::osfamily == 'RedHat' and $::operatingsystem == 'Fedora' {
    fail('This module has not been verified under Fedora.')
  } elsif $::osfamily != 'RedHat' {
    fail('This module has not been verified under an osfamily other than RedHat')
  }

  if $::operatingsystemmajrelease != "7" {
    fail("This module is for 7 not $::operatingsystemmajrelease")
  }
  ensure_packages(["cjkuni-uming-fonts", "dejavu-sans-fonts", "dejavu-sans-mono-fonts", "dejavu-serif-fonts", "gnu-free-mono-fonts", "gnu-free-sans-fonts", "gnu-free-serif-fonts", "google-crosextra-caladea-fonts", "google-crosextra-carlito-fonts", "jomolhari-fonts", "khmeros-base-fonts", "liberation-mono-fonts", "liberation-sans-fonts", "liberation-serif-fonts", "lklug-fonts", "lohit-assamese-fonts", "lohit-bengali-fonts", "lohit-devanagari-fonts", "lohit-gujarati-fonts", "lohit-kannada-fonts", "lohit-malayalam-fonts", "lohit-marathi-fonts", "lohit-nepali-fonts", "lohit-oriya-fonts", "lohit-punjabi-fonts", "lohit-tamil-fonts", "lohit-telugu-fonts", "madan-fonts", "nhn-nanum-gothic-fonts", "open-sans-fonts", "overpass-fonts", "paktype-naskh-basic-fonts", "paratype-pt-sans-fonts", "sil-abyssinica-fonts", "sil-nuosu-fonts", "sil-padauk-fonts", "smc-meera-fonts", "stix-fonts", "thai-scalable-waree-fonts", "ucs-miscfixed-fonts", "vlgothic-fonts", "wqy-microhei-fonts", "wqy-zenhei-fonts"])

}
