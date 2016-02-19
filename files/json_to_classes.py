#!/usr/bin/env python
#pylint: disable=line-too-long
'''
    Take a json file from comps_to_json.py and make
    a bunch of puppet classes
'''

# Apache License, Version 2.0

# for python3 compat
from __future__ import unicode_literals
from __future__ import absolute_import

import json
import os

TRUSTED_OS = '''
  if $::osfamily == 'RedHat' and $::operatingsystem == 'Fedora' {
    fail('This module has not been verified under Fedora.')
  } elsif $::osfamily != 'RedHat' {
    fail('This module has not been verified under an osfamily other than RedHat')
  }
'''
####################################################################
if __name__ == '__main__':
    import sys
    import optparse
    import textwrap

    DESC = textwrap.dedent(__doc__)
    PARSER = optparse.OptionParser(description=DESC)
    PARSER.add_option('--filename', metavar="<FILENAME>", default=None,
                      help='''Which json file do I convert''')
    PARSER.add_option('--os', metavar="<OSFAMILY>", default=None,
                      help='''for which osfamily?''')
    PARSER.add_option('--release', metavar="<OPERATINGSYSTEMMAJRELEASE>", default=None,
                      help='''for which operatingsystemmajrelease?''')
    PARSER.add_option('--outdir', metavar="<OUTDIR>", default=None,
                      help='''where should the output be?''')

    OPTIONS = PARSER.parse_args()[0]

    if not OPTIONS.filename:
        PARSER.print_help()
        print('\nMissing required option - filename')
        sys.exit(1)

    if not OPTIONS.os:
        PARSER.print_help()
        print('\nMissing required option - os')
        sys.exit(1)

    if not OPTIONS.release:
        PARSER.print_help()
        print('\nMissing required option - release')
        sys.exit(1)

    if not OPTIONS.outdir:
        PARSER.print_help()
        print('\nMissing required option - outdir')
        sys.exit(1)

    _FD = open(OPTIONS.filename, 'r')
    JSON = json.loads(_FD.read())
    _FD.close()

    if not os.path.isdir(OPTIONS.outdir):
        os.mkdir(OPTIONS.outdir)
    if not os.path.isdir(OPTIONS.outdir + '/manifests'):
        os.mkdir(OPTIONS.outdir + '/manifests')

    if os.path.isfile(OPTIONS.outdir + '/manifests/init.pp'):
        os.remove(OPTIONS.outdir + '/manifests/init.pp')

    TOPLEVEL_MODULE = 'class yumgroup {'
    TOPLEVEL_MODULE = TOPLEVEL_MODULE + '\n' + TRUSTED_OS + '\n}\n'

    _FD = open(OPTIONS.outdir + '/manifests/init.pp', 'w')
    _FD.write(TOPLEVEL_MODULE)
    _FD.close()

    for GROUPID in JSON:
        if not os.path.isdir(OPTIONS.outdir + '/manifests/' + GROUPID):
            os.mkdir(OPTIONS.outdir + '/manifests/' + GROUPID)
        if os.path.isfile(OPTIONS.outdir + '/manifests/' + GROUPID + '/init.pp'):
            os.remove(OPTIONS.outdir + '/manifests/' + GROUPID + '/init.pp')

        MODULE = 'class yumgroup::' + GROUPID + ' {'
        MODULE = MODULE + '\n' + TRUSTED_OS + '\n'
        MODULE = MODULE + '  include yumgroup::' + GROUPID + '::mandatory\n'
        MODULE = MODULE + '  include yumgroup::' + GROUPID + '::default\n'
        MODULE = MODULE + '  include yumgroup::' + GROUPID + '::optional\n'
        MODULE = MODULE + '\n}\n'
        _FD = open(OPTIONS.outdir + '/manifests/' + GROUPID + '/init.pp', 'w')
        _FD.write(MODULE)
        _FD.close()

        for TYPE in ['mandatory', 'default', 'optional'] :
            if os.path.isfile(OPTIONS.outdir + '/manifests/' + GROUPID + '/' + TYPE + '.pp'):
                os.remove(OPTIONS.outdir + '/manifests/' + GROUPID + '/' + TYPE + '.pp')
            MODULE = 'class yumgroup::' + GROUPID + '::' + TYPE + ' {'
            MODULE = MODULE + '\n' + TRUSTED_OS + '\n'
            MODULE = MODULE + '  include yumgroup::${::osfamily}::osver${::operatingsystemmajrelease}::' + GROUPID + '::' + TYPE + '\n'
            MODULE = MODULE + '\n}\n'
            _FD = open(OPTIONS.outdir + '/manifests/' + GROUPID + '/' + TYPE + '.pp', 'w')
            _FD.write(MODULE)
            _FD.close()

            if not os.path.isdir(OPTIONS.outdir + '/manifests/' + OPTIONS.os):
                os.mkdir(OPTIONS.outdir + '/manifests/' + OPTIONS.os)
            if not os.path.isdir(OPTIONS.outdir + '/manifests/' + OPTIONS.os + '/osver' + OPTIONS.release):
                os.mkdir(OPTIONS.outdir + '/manifests/' + OPTIONS.os + '/osver' + OPTIONS.release)
            if not os.path.isdir(OPTIONS.outdir + '/manifests/' + OPTIONS.os + '/osver' + OPTIONS.release + '/' + GROUPID):
                os.mkdir(OPTIONS.outdir + '/manifests/' + OPTIONS.os + '/osver' + OPTIONS.release + '/' + GROUPID)

            if os.path.isfile(OPTIONS.outdir + '/manifests/' + OPTIONS.os + '/osver' + OPTIONS.release + '/' + GROUPID + '/' + TYPE + '.pp'):
                os.remove(OPTIONS.outdir + '/manifests/' + OPTIONS.os + '/osver' + OPTIONS.release + '/' + GROUPID + '/' + TYPE + '.pp')

            MODULE = 'class yumgroup::'+ OPTIONS.os + '::osver' + OPTIONS.release + '::' + GROUPID + '::' + TYPE + ' {'
            MODULE = MODULE + '\n' + TRUSTED_OS + '\n'
            MODULE = MODULE + '  if $::operatingsystemmajrelease != "' + OPTIONS.release + '" {\n    fail("This module is for ' + OPTIONS.release + ' not $::operatingsystemmajrelease")\n  }\n'
            MODULE = MODULE + '  ensure_packages(' + json.dumps(JSON[GROUPID][TYPE]) + ')\n'
            MODULE = MODULE + '\n}\n'
            _FD = open(OPTIONS.outdir + '/manifests/' + OPTIONS.os + '/osver' + OPTIONS.release + '/' + GROUPID + '/' + TYPE + '.pp', 'w')
            _FD.write(MODULE)
            _FD.close()
