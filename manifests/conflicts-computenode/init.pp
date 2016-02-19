class yumgroup::conflicts-computenode {

  if $::osfamily == 'RedHat' and $::operatingsystem == 'Fedora' {
    fail('This module has not been verified under Fedora.')
  } elsif $::osfamily != 'RedHat' {
    fail('This module has not been verified under an osfamily other than RedHat')
  }

  include yumgroup::conflicts-computenode::mandatory
  include yumgroup::conflicts-computenode::default
  include yumgroup::conflicts-computenode::optional

}
