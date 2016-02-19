class yumgroup::perl-runtime {

  if $::osfamily == 'RedHat' and $::operatingsystem == 'Fedora' {
    fail('This module has not been verified under Fedora.')
  } elsif $::osfamily != 'RedHat' {
    fail('This module has not been verified under an osfamily other than RedHat')
  }

  include yumgroup::perl-runtime::mandatory
  include yumgroup::perl-runtime::default
  include yumgroup::perl-runtime::optional

}
