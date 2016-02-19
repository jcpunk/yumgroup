class yumgroup::Redhat::osver7::python-web::mandatory {

  if $::osfamily == 'RedHat' and $::operatingsystem == 'Fedora' {
    fail('This module has not been verified under Fedora.')
  } elsif $::osfamily != 'RedHat' {
    fail('This module has not been verified under an osfamily other than RedHat')
  }

  if $::operatingsystemmajrelease != "7" {
    fail("This module is for 7 not $::operatingsystemmajrelease")
  }
  ensure_packages(["freetype-devel", "libcurl", "libcurl-devel", "libjpeg-turbo", "libjpeg-turbo-devel", "mod_wsgi", "MySQL-python", "numpy", "numpy-f2py", "python", "python-magic", "python-psycopg2", "python-virtualenv"])

}
