class yumgroup::misc-sl {

  if $::osfamily == 'RedHat' and $::operatingsystem == 'Fedora' {
    fail('This module has not been verified under Fedora.')
  } elsif $::osfamily != 'RedHat' {
    fail('This module has not been verified under an osfamily other than RedHat')
  }

  include yumgroup::misc-sl::mandatory
  include yumgroup::misc-sl::default
  include yumgroup::misc-sl::optional

}
