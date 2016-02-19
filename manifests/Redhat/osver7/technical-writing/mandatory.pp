class yumgroup::Redhat::osver7::technical-writing::mandatory {

  if $::osfamily == 'RedHat' and $::operatingsystem == 'Fedora' {
    fail('This module has not been verified under Fedora.')
  } elsif $::osfamily != 'RedHat' {
    fail('This module has not been verified under an osfamily other than RedHat')
  }

  if $::operatingsystemmajrelease != "7" {
    fail("This module is for 7 not $::operatingsystemmajrelease")
  }
  ensure_packages(["docbook-slides", "docbook-style-xsl", "docbook-utils", "docbook-utils-pdf", "docbook5-schemas", "docbook5-style-xsl", "tex-fonts-hebrew", "texinfo", "texlive", "texlive-cm-lgc", "texlive-kerkis", "texlive-latex", "xmlto", "xmlto-tex", "xmltoman"])

}
