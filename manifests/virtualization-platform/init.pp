class yumgroup::virtualization-platform {

  if $::osfamily == 'RedHat' and $::operatingsystem == 'Fedora' {
    fail('This module has not been verified under Fedora.')
  } elsif $::osfamily != 'RedHat' {
    fail('This module has not been verified under an osfamily other than RedHat')
  }

  include yumgroup::virtualization-platform::mandatory
  include yumgroup::virtualization-platform::default
  include yumgroup::virtualization-platform::optional

}
