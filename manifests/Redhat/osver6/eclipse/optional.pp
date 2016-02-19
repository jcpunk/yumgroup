class yumgroup::Redhat::osver6::eclipse::optional {

  if $::osfamily == 'RedHat' and $::operatingsystem == 'Fedora' {
    fail('This module has not been verified under Fedora.')
  } elsif $::osfamily != 'RedHat' {
    fail('This module has not been verified under an osfamily other than RedHat')
  }

  if $::operatingsystemmajrelease != "6" {
    fail("This module is for 6 not $::operatingsystemmajrelease")
  }
  ensure_packages(["eclipse-mylyn-cdt", "eclipse-mylyn-pde", "eclipse-mylyn-trac", "eclipse-mylyn-webtasks", "eclipse-mylyn-wikitext", "eclipse-subclipse-graph"])

}
