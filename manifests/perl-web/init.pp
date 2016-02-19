class yumgroup::perl-web {

  if $::osfamily == 'RedHat' and $::operatingsystem == 'Fedora' {
    fail('This module has not been verified under Fedora.')
  } elsif $::osfamily != 'RedHat' {
    fail('This module has not been verified under an osfamily other than RedHat')
  }

  include yumgroup::perl-web::mandatory
  include yumgroup::perl-web::default
  include yumgroup::perl-web::optional

}
