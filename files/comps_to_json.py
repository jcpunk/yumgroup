#!/usr/bin/env python
#pylint: disable=line-too-long
'''
    Take a comps.xml and print out a json file
'''

# Apache License, Version 2.0

# for python3 compat
from __future__ import unicode_literals
from __future__ import absolute_import

import json

from lxml import etree as xmletree

####################################################################
if __name__ == '__main__':
    import sys
    import optparse
    import textwrap

    DESC = textwrap.dedent(__doc__)
    PARSER = optparse.OptionParser(description=DESC)
    PARSER.add_option('--filename', metavar="<FILENAME>", default=None,
                      help='''Which comps.xml do I convert''')

    OPTIONS = PARSER.parse_args()[0]

    if not OPTIONS.filename:
        PARSER.print_help()
        print('\nMissing required option')
        sys.exit(1)

    GROUPS = {}

    OTREE = xmletree.parse(OPTIONS.filename)
    for ELEMENT in OTREE.xpath('/comps/group'):
        GROUPID = ELEMENT.find('id').text
        GROUPS[GROUPID] = {}
        GROUPS[GROUPID]['mandatory'] = []
        GROUPS[GROUPID]['default'] = []
        GROUPS[GROUPID]['optional'] = []
        GROUPS[GROUPID]['conditional'] = {}
        for PKG in ELEMENT.xpath('./packagelist/packagereq'):
            PKGTYPE = PKG.get('type')
            if not PKGTYPE:
                continue
            if PKGTYPE != 'conditional':
                GROUPS[GROUPID][PKGTYPE].append(PKG.text)
            else:
                GROUPS[GROUPID][PKGTYPE][PKG.text] = PKG.get('requires')

    print(json.dumps(GROUPS))
