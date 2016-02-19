class yumgroup::icelandic-support {

  if $::osfamily == 'RedHat' and $::operatingsystem == 'Fedora' {
    fail('This module has not been verified under Fedora.')
  } elsif $::osfamily != 'RedHat' {
    fail('This module has not been verified under an osfamily other than RedHat')
  }

  include yumgroup::icelandic-support::mandatory
  include yumgroup::icelandic-support::default
  include yumgroup::icelandic-support::optional

}
