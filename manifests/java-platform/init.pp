class yumgroup::java-platform {

  if $::osfamily == 'RedHat' and $::operatingsystem == 'Fedora' {
    fail('This module has not been verified under Fedora.')
  } elsif $::osfamily != 'RedHat' {
    fail('This module has not been verified under an osfamily other than RedHat')
  }

  include yumgroup::java-platform::mandatory
  include yumgroup::java-platform::default
  include yumgroup::java-platform::optional

}
