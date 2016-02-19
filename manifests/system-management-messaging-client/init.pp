class yumgroup::system-management-messaging-client {

  if $::osfamily == 'RedHat' and $::operatingsystem == 'Fedora' {
    fail('This module has not been verified under Fedora.')
  } elsif $::osfamily != 'RedHat' {
    fail('This module has not been verified under an osfamily other than RedHat')
  }

  include yumgroup::system-management-messaging-client::mandatory
  include yumgroup::system-management-messaging-client::default
  include yumgroup::system-management-messaging-client::optional

}
