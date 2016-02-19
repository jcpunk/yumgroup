class yumgroup::technical-writing {

  if $::osfamily == 'RedHat' and $::operatingsystem == 'Fedora' {
    fail('This module has not been verified under Fedora.')
  } elsif $::osfamily != 'RedHat' {
    fail('This module has not been verified under an osfamily other than RedHat')
  }

  include yumgroup::technical-writing::mandatory
  include yumgroup::technical-writing::default
  include yumgroup::technical-writing::optional

}
