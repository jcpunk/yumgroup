# == Define: yumgroup
#
# Full description of class yumgroup here.
#
# === Parameters
#
# Document parameters here.
#
# [*sample_parameter*]
#   Explanation of what this parameter affects and what it defaults to.
#   e.g. "Specify one or more upstream ntp servers as an array."
#
# === Variables
#
# Here you should define a list of variables that this module would require.
#
# [*sample_variable*]
#   Explanation of how this variable affects the funtion of this class and if it
#   has a default. e.g. "The parameter enc_ntp_servers must be set by the
#   External Node Classifier as a comma separated list of hostnames." (Note,
#   global variables should not be used in preference to class parameters  as of
#   Puppet 2.6.)
#
# === Examples
#
#  class { yumgroups:
#    servers => [ 'pool.ntp.org', 'ntp.local.company.com' ]
#  }
#
# === Authors
#
# Author Name <author@domain.com>
#
# === Copyright
#
# Copyright 2011 Your name here, unless otherwise noted.
#
define yumgroup (
  $groupid        = $yumgroup::params::groupid,
  $package_types  = $yumgroup::params::package_types,
  $ensure  = $yumgroup::params::ensure,
) inherits yumgroup::params {

  validate_array($groupid)
  validate_array($package_types)

  # re values from https://docs.puppetlabs.com/references/latest/type.html#package-attribute-ensure
  validate_re($ensure, ['^installed', '^absent', '^purged', '^held', '^latest'])


# https://github.com/puppetlabs/puppetlabs-stdlib -> parsejson
# https://docs.puppetlabs.com/references/latest/function.html#file

}
