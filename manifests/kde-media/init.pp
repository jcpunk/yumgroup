class yumgroup::kde-media {

  if $::osfamily == 'RedHat' and $::operatingsystem == 'Fedora' {
    fail('This module has not been verified under Fedora.')
  } elsif $::osfamily != 'RedHat' {
    fail('This module has not been verified under an osfamily other than RedHat')
  }

  include yumgroup::kde-media::mandatory
  include yumgroup::kde-media::default
  include yumgroup::kde-media::optional

}
