#!/usr/bin/env python2.5
# -*- encoding: utf8 -*-

import sys
import optparse


__author__ = 'sheep'


def main():
    '''\
    %prog [options]
    '''
    return 0


if __name__ == '__main__':
    parser = optparse.OptionParser(usage=main.__doc__)
    options, args = parser.parse_args()

    if len(args) != 0:
        parser.print_help()
        sys.exit()

    sys.exit(main(*args))
