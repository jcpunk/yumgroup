class yumgroup::turbogears {

  if $::osfamily == 'RedHat' and $::operatingsystem == 'Fedora' {
    fail('This module has not been verified under Fedora.')
  } elsif $::osfamily != 'RedHat' {
    fail('This module has not been verified under an osfamily other than RedHat')
  }

  include yumgroup::turbogears::mandatory
  include yumgroup::turbogears::default
  include yumgroup::turbogears::optional

}
