#!/usr/bin/python

import re
import sys
import urllib
from BeautifulSoup import *

"""
tbds:
 -- date-time stamp support
 -- error/debug log file support
"""
def download_data(d_url):
  print 'Download URL: ', d_url


def parse_n_get_url(rawfile):
  #print 'file opened: ', rawfile
  tag_to_search = 'btnHylSearBhav'
  dwld_url = ""
  html = urllib.urlopen(rawfile).read()
  soup = BeautifulSoup(html)
  # Retrieve all of the anchor tags
  tags = soup('a') 
  for tag in tags:
    if tag.get('id',None) == tag_to_search :
      dwld_url = tag.get('href', None)
  if dwld_url == "":
    print 'HTML tag not found ', tag_to_search
    return
  else: 
    download_data(dwld_url)
  return

def main():
  print 'Number of arguments:', len(sys.argv), 'arguments.'
  print 'Argument List:', str(sys.argv) 

  print "Parsing raw file: ", sys.argv[1]
  parse_n_get_url(sys.argv[1])

if __name__ == '__main__':
    main()
