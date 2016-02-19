class yumgroup::Redhat::osver6::misc-sl::optional {

  if $::osfamily == 'RedHat' and $::operatingsystem == 'Fedora' {
    fail('This module has not been verified under Fedora.')
  } elsif $::osfamily != 'RedHat' {
    fail('This module has not been verified under an osfamily other than RedHat')
  }

  if $::operatingsystemmajrelease != "6" {
    fail("This module is for 6 not $::operatingsystemmajrelease")
  }
  ensure_packages(["abattis-cantarell-fonts", "SL_desktop_tweaks", "SL_enable_serialconsole", "SL_enable_serialconsole-1152", "SL_enable_serialconsole-192", "SL_enable_serialconsole-384", "SL_no_colorls", "SL_password_for_singleuser"])

}
