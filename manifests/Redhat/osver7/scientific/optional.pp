class yumgroup::Redhat::osver7::scientific::optional {

  if $::osfamily == 'RedHat' and $::operatingsystem == 'Fedora' {
    fail('This module has not been verified under Fedora.')
  } elsif $::osfamily != 'RedHat' {
    fail('This module has not been verified under an osfamily other than RedHat')
  }

  if $::operatingsystemmajrelease != "7" {
    fail("This module is for 7 not $::operatingsystemmajrelease")
  }
  ensure_packages(["atlas", "fftw", "fftw-devel", "fftw-static", "gnuplot", "gsl-devel", "lapack", "mpich", "mpitests-mvapich2", "mpitests-openmpi", "mvapich2", "mvapich2-psm-devel", "numpy", "openmpi", "openmpi-devel", "scipy", "units"])

}
