#!/usr/bin/python

import re
import sys
import urllib

#def download_data(d_url):

def parse_n_get_url(rawfile):
  print 'file received: ', rawfile


def main():
  print 'Number of arguments:', len(sys.argv), 'arguments.'
  print 'Argument List:', str(sys.argv) 

  print "Parsing raw file: ", sys.argv[1]
  parse_n_get_url(sys.argv[1])

if __name__ == '__main__':
    main()
