class yumgroup::compat-libraries {

  if $::osfamily == 'RedHat' and $::operatingsystem == 'Fedora' {
    fail('This module has not been verified under Fedora.')
  } elsif $::osfamily != 'RedHat' {
    fail('This module has not been verified under an osfamily other than RedHat')
  }

  include yumgroup::compat-libraries::mandatory
  include yumgroup::compat-libraries::default
  include yumgroup::compat-libraries::optional

}
