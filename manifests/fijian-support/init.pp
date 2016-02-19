class yumgroup::fijian-support {

  if $::osfamily == 'RedHat' and $::operatingsystem == 'Fedora' {
    fail('This module has not been verified under Fedora.')
  } elsif $::osfamily != 'RedHat' {
    fail('This module has not been verified under an osfamily other than RedHat')
  }

  include yumgroup::fijian-support::mandatory
  include yumgroup::fijian-support::default
  include yumgroup::fijian-support::optional

}
