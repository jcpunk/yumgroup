class yumgroup::Redhat::osver7::fonts::optional {

  if $::osfamily == 'RedHat' and $::operatingsystem == 'Fedora' {
    fail('This module has not been verified under Fedora.')
  } elsif $::osfamily != 'RedHat' {
    fail('This module has not been verified under an osfamily other than RedHat')
  }

  if $::operatingsystemmajrelease != "7" {
    fail("This module is for 7 not $::operatingsystemmajrelease")
  }
  ensure_packages(["bitmap-fixed-fonts", "bitmap-lucida-typewriter-fonts", "bpg-chveulebrivi-fonts", "bpg-courier-fonts", "bpg-glaho-fonts", "cjkuni-ukai-fonts", "culmus-aharoni-clm-fonts", "culmus-caladings-clm-fonts", "culmus-david-clm-fonts", "culmus-drugulin-clm-fonts", "culmus-ellinia-clm-fonts", "culmus-frank-ruehl-clm-fonts", "culmus-hadasim-clm-fonts", "culmus-keteryg-fonts", "culmus-miriam-clm-fonts", "culmus-miriam-mono-clm-fonts", "culmus-nachlieli-clm-fonts", "culmus-simple-clm-fonts", "culmus-stamashkenaz-clm-fonts", "culmus-stamsefarad-clm-fonts", "culmus-yehuda-clm-fonts", "ghostscript-chinese", "google-noto-sans-armenian-fonts", "google-noto-sans-devanagari-fonts", "google-noto-sans-devanagari-ui-fonts", "google-noto-sans-ethiopic-fonts", "google-noto-sans-fonts", "google-noto-sans-georgian-fonts", "google-noto-sans-hebrew-fonts", "google-noto-sans-khmer-fonts", "google-noto-sans-khmer-ui-fonts", "google-noto-sans-lao-fonts", "google-noto-sans-lao-ui-fonts", "google-noto-sans-tamil-fonts", "google-noto-sans-tamil-ui-fonts", "google-noto-sans-thai-fonts", "google-noto-sans-thai-ui-fonts", "google-noto-sans-ui-fonts", "google-noto-serif-armenian-fonts", "google-noto-serif-fonts", "google-noto-serif-georgian-fonts", "google-noto-serif-lao-fonts", "google-noto-serif-thai-fonts", "gubbi-fonts", "ipa-gothic-fonts", "ipa-mincho-fonts", "ipa-pgothic-fonts", "ipa-pmincho-fonts", "kacst-art-fonts", "kacst-book-fonts", "kacst-decorative-fonts", "kacst-digital-fonts", "kacst-farsi-fonts", "kacst-letter-fonts", "kacst-naskh-fonts", "kacst-office-fonts", "kacst-one-fonts", "kacst-pen-fonts", "kacst-poster-fonts", "kacst-qurn-fonts", "kacst-screen-fonts", "kacst-title-fonts", "kacst-titlel-fonts", "khmeros-battambang-fonts", "khmeros-bokor-fonts", "khmeros-handwritten-fonts", "khmeros-metal-chrieng-fonts", "khmeros-muol-fonts", "khmeros-siemreap-fonts", "kurdit-unikurd-web-fonts", "liberation-narrow-fonts", "nafees-web-naskh-fonts", "navilu-fonts", "nhn-nanum-brush-fonts", "nhn-nanum-myeongjo-fonts", "nhn-nanum-pen-fonts", "paktype-naqsh-fonts", "paktype-tehreer-fonts", "pothana2000-fonts", "saab-fonts", "samyak-devanagari-fonts", "samyak-gujarati-fonts", "samyak-malayalam-fonts", "samyak-oriya-fonts", "samyak-tamil-fonts", "smc-anjalioldlipi-fonts", "smc-dyuthi-fonts", "smc-kalyani-fonts", "smc-rachana-fonts", "smc-raghumalayalam-fonts", "smc-suruma-fonts", "thai-scalable-garuda-fonts", "thai-scalable-kinnari-fonts", "thai-scalable-loma-fonts", "thai-scalable-norasi-fonts", "thai-scalable-purisa-fonts", "thai-scalable-sawasdee-fonts", "thai-scalable-tlwgmono-fonts", "thai-scalable-tlwgtypewriter-fonts", "thai-scalable-tlwgtypist-fonts", "thai-scalable-tlwgtypo-fonts", "thai-scalable-umpush-fonts", "tibetan-machine-uni-fonts", "vemana2000-fonts", "vlgothic-p-fonts"])

}