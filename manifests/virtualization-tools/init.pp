class yumgroup::virtualization-tools {

  if $::osfamily == 'RedHat' and $::operatingsystem == 'Fedora' {
    fail('This module has not been verified under Fedora.')
  } elsif $::osfamily != 'RedHat' {
    fail('This module has not been verified under an osfamily other than RedHat')
  }

  include yumgroup::virtualization-tools::mandatory
  include yumgroup::virtualization-tools::default
  include yumgroup::virtualization-tools::optional

}
