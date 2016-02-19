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
# Pat Riehecky <riehecky@fnal.gov>
#
# === Copyright
#
# Copyright 2015 Pat Riehecky, unless otherwise noted.
#
class yumgroup (
  $groupid        = $yumgroup::params::groupid,
  $package_types  = $yumgroup::params::package_types,
  $ensure         = $yumgroup::params::ensure,
) inherits yumgroup::params {

  validate_array($groupid)
  validate_array($package_types)

  # re values from https://docs.puppetlabs.com/references/latest/type.html#package-attribute-ensure
  validate_re($ensure, ['^installed', '^absent', '^present', '^purged', '^held', '^latest'])

  debug("groupid=> ${groupid}")
  debug("package_types=> ${package_types}")
  debug("ensure=> ${ensure}")

  debug("Loading package list from: yumgroup/${::osfamily}/${::operatingsystemmajrelease}.json")
  $module_path = get_module_path('yumgroup')
  $rawfile = parsejson(file("${module_path}/files/${::osfamily}/${::operatingsystemmajrelease}.json"))

  $groupid.each | $index, $group | {$package_types}.each | $ndex, $type | { notice $group }
  # {$rawfile[$group][$type]}.each | $dex, $pkg | { package{$pkg: ensure => $ensure} }
  debug($rawfile['base']['mandatory'])

# https://github.com/puppetlabs/puppetlabs-stdlib#parsejson
# https://github.com/puppetlabs/puppetlabs-stdlib#ensure_resource
# https://docs.puppetlabs.com/references/latest/function.html#file

}
