class yumgroup::ruby-runtime {

  if $::osfamily == 'RedHat' and $::operatingsystem == 'Fedora' {
    fail('This module has not been verified under Fedora.')
  } elsif $::osfamily != 'RedHat' {
    fail('This module has not been verified under an osfamily other than RedHat')
  }

  include yumgroup::ruby-runtime::mandatory
  include yumgroup::ruby-runtime::default
  include yumgroup::ruby-runtime::optional

}
