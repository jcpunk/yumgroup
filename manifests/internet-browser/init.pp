class yumgroup::internet-browser {

  if $::osfamily == 'RedHat' and $::operatingsystem == 'Fedora' {
    fail('This module has not been verified under Fedora.')
  } elsif $::osfamily != 'RedHat' {
    fail('This module has not been verified under an osfamily other than RedHat')
  }

  include yumgroup::internet-browser::mandatory
  include yumgroup::internet-browser::default
  include yumgroup::internet-browser::optional

}
