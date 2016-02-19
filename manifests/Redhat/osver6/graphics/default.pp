class yumgroup::Redhat::osver6::graphics::default {

  if $::osfamily == 'RedHat' and $::operatingsystem == 'Fedora' {
    fail('This module has not been verified under Fedora.')
  } elsif $::osfamily != 'RedHat' {
    fail('This module has not been verified under an osfamily other than RedHat')
  }

  if $::operatingsystemmajrelease != "6" {
    fail("This module is for 6 not $::operatingsystemmajrelease")
  }
  ensure_packages(["gimp-data-extras", "gimp-help", "gimp-help-browser", "gutenprint-plugin", "libsane-hpaio", "sane-backends-libs-gphoto2", "sane-frontends", "xsane", "xsane-gimp"])

}
