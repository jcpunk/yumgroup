class yumgroup::xhosa-support {

  if $::osfamily == 'RedHat' and $::operatingsystem == 'Fedora' {
    fail('This module has not been verified under Fedora.')
  } elsif $::osfamily != 'RedHat' {
    fail('This module has not been verified under an osfamily other than RedHat')
  }

  include yumgroup::xhosa-support::mandatory
  include yumgroup::xhosa-support::default
  include yumgroup::xhosa-support::optional

}
