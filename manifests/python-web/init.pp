class yumgroup::python-web {

  if $::osfamily == 'RedHat' and $::operatingsystem == 'Fedora' {
    fail('This module has not been verified under Fedora.')
  } elsif $::osfamily != 'RedHat' {
    fail('This module has not been verified under an osfamily other than RedHat')
  }

  include yumgroup::python-web::mandatory
  include yumgroup::python-web::default
  include yumgroup::python-web::optional

}
