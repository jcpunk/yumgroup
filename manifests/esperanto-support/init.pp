class yumgroup::esperanto-support {

  if $::osfamily == 'RedHat' and $::operatingsystem == 'Fedora' {
    fail('This module has not been verified under Fedora.')
  } elsif $::osfamily != 'RedHat' {
    fail('This module has not been verified under an osfamily other than RedHat')
  }

  include yumgroup::esperanto-support::mandatory
  include yumgroup::esperanto-support::default
  include yumgroup::esperanto-support::optional

}
