class yumgroup::params {

  if $::osfamily == 'RedHat' and $::operatingsystem == 'Fedora' {
    fail('This module has not been verified under Fedora.')
  } elsif $::osfamily != 'RedHat' {
    fail('This module has not been verified under an osfamily other than RedHat')
  }

  $groupid       = ['base', 'core' ]
  $package_types = ['mandatory', 'default']
  $ensure        = 'present'
}
