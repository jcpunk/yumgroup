class yumgroup::Redhat::osver6::scientific::optional {

  if $::osfamily == 'RedHat' and $::operatingsystem == 'Fedora' {
    fail('This module has not been verified under Fedora.')
  } elsif $::osfamily != 'RedHat' {
    fail('This module has not been verified under an osfamily other than RedHat')
  }

  if $::operatingsystemmajrelease != "6" {
    fail("This module is for 6 not $::operatingsystemmajrelease")
  }
  ensure_packages(["atlas", "compat-openmpi", "compat-openmpi-psm", "fftw", "fftw-devel", "fftw-static", "gsl", "gsl-devel", "gsl-static", "lapack", "mpich2", "mpitests-mvapich", "mpitests-mvapich2", "mpitests-openmpi", "mvapich", "mvapich-psm-devel", "mvapich-psm-static", "mvapich2", "mvapich2-psm-devel", "numpy", "openmpi", "openmpi-devel", "scipy"])

}
