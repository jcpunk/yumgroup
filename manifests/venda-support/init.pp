class yumgroup::venda-support {

  if $::osfamily == 'RedHat' and $::operatingsystem == 'Fedora' {
    fail('This module has not been verified under Fedora.')
  } elsif $::osfamily != 'RedHat' {
    fail('This module has not been verified under an osfamily other than RedHat')
  }

  include yumgroup::venda-support::mandatory
  include yumgroup::venda-support::default
  include yumgroup::venda-support::optional

}
