class yumgroup::tagalog-support {

  if $::osfamily == 'RedHat' and $::operatingsystem == 'Fedora' {
    fail('This module has not been verified under Fedora.')
  } elsif $::osfamily != 'RedHat' {
    fail('This module has not been verified under an osfamily other than RedHat')
  }

  include yumgroup::tagalog-support::mandatory
  include yumgroup::tagalog-support::default
  include yumgroup::tagalog-support::optional

}
