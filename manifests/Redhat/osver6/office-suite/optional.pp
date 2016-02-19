class yumgroup::Redhat::osver6::office-suite::optional {

  if $::osfamily == 'RedHat' and $::operatingsystem == 'Fedora' {
    fail('This module has not been verified under Fedora.')
  } elsif $::osfamily != 'RedHat' {
    fail('This module has not been verified under an osfamily other than RedHat')
  }

  if $::operatingsystemmajrelease != "6" {
    fail("This module is for 6 not $::operatingsystemmajrelease")
  }
  ensure_packages(["libreoffice-base", "libreoffice-emailmerge", "libreoffice-headless", "libreoffice-javafilter", "libreoffice-ogltrans", "libreoffice-presentation-minimizer", "libreoffice-report-builder", "libreoffice-wiki-publisher", "planner", "taskjuggler"])

}
