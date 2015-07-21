class yumgroup::params {

  if $::osfamily == 'RedHat' and $::operatingsystem == 'Fedora' {
    fail('This module has not been verified under fedora.')
  } elsif $::osfamily != 'RedHat' {
    fail('This module has not been verified under osfamily other than RedHat')
  }

  $groupid       = [ ]
  $package_types = ['mandatory']
  $ensure        = 'present'
}
