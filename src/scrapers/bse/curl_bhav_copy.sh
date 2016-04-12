#!/bin/bash

set -x

BASE_PATH=/home/vnejindal/vne/lab/scrip_tipengine
DATA_PATH=$BASE_PATH/data
RAW_PATH=$DATA_PATH/bhavcopy

VIEWSTATE="__VIEWSTATE=%2FwEPDwUJODM1NjAzNjUxD2QWAgIDD2QWEgIBDxYCHgdWaXNpYmxlZxYCAgEPDxYGHgRUZXh0BRNFcXVpdHkgLSAwNy8wNC8yMDE2HgtOYXZpZ2F0ZVVybAVBaHR0cDovL3d3dy5ic2VpbmRpYS5jb20vZG93bmxvYWQvQmhhdkNvcHkvRXF1aXR5L0VRMDcwNDE2X0NTVi5aSVAfAGdkZAIDDxYCHwBnFgICAQ8PFgYfAQUYRGVyaXZhdGl2ZXMgLSAwNy8wNC8yMDE2HwIFSWh0dHA6Ly93d3cuYnNlaW5kaWEuY29tL2Rvd25sb2FkL0JoYXZjb3B5L0Rlcml2YXRpdmUvYmhhdmNvcHkwNy0wNC0xNi56aXAfAGdkZAIFDxYCHwBnFgICAQ8PFgQfAQUlQ3VycmVuY3kgRGVyaXZhdGl2ZSAvSVJEIC0gMDYvMDQvMjAxNh8CBUtodHRwOi8vd3d3LmJzZWluZGlhLmNvbS9ic2VkYXRhL0NJTUxfYmhhdmNvcHkvQ3VycmVuY3lCaGF2Q29weV8yMDE2MDQwNi5aSVBkZAIHDxYCHwBnFgICAQ8PFgYfAQURRGVidCAtIDA2LzA0LzIwMTYfAgVHaHR0cDovL3d3dy5ic2VpbmRpYS5jb20vZG93bmxvYWQvQmhhdmNvcHkvRGVidC9ERUJUQkhBVkNPUFkwNjA0MjAxNi56aXAfAGdkZAIJDxYCHwBnFgICAQ8PFgYfAQUQU0xCIC0gMDYvMDQvMjAxNh8CBT5odHRwOi8vd3d3LmJzZWluZGlhLmNvbS9kb3dubG9hZC9CaGF2Y29weS9TTEIvU1EwNjA0MTZfQ1NWLlpJUB8AZ2RkAhUPEGQQFSACREQCMDECMDICMDMCMDQCMDUCMDYCMDcCMDgCMDkCMTACMTECMTICMTMCMTQCMTUCMTYCMTcCMTgCMTkCMjACMjECMjICMjMCMjQCMjUCMjYCMjcCMjgCMjkCMzACMzEVIAJERAExATIBMwE0ATUBNgE3ATgBOQIxMAIxMQIxMgIxMwIxNAIxNQIxNgIxNwIxOAIxOQIyMAIyMQIyMgIyMwIyNAIyNQIyNgIyNwIyOAIyOQIzMAIzMRQrAyBnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2RkAhkPEGQQFQsEWVlZWQQyMDE2BDIwMTUEMjAxNAQyMDEzBDIwMTIEMjAxMQQyMDEwBDIwMDkEMjAwOAQyMDA3FQsEWVlZWQQyMDE2BDIwMTUEMjAxNAQyMDEzBDIwMTIEMjAxMQQyMDEwBDIwMDkEMjAwOAQyMDA3FCsDC2dnZ2dnZ2dnZ2dnZGQCHw8WAh8AZxYCAgEPDxYGHwEFE0VxdWl0eSAtIDA1LzAxLzIwMTYfAgVBaHR0cDovL3d3dy5ic2VpbmRpYS5jb20vZG93bmxvYWQvQmhhdkNvcHkvRXF1aXR5L0VRMDUwMTE2X0NTVi5aSVAfAGdkZAIhDw8WBB8BBR5ObyBGaWxlIGF2YWlsYWJsZSBmb3IgRG93bmxvYWQfAGhkZBgBBR5fX0NvbnRyb2xzUmVxdWlyZVBvc3RCYWNrS2V5X18WCgUHcmJ0ZXF0eQUHcmJ0RGVyaQUHcmJ0RGVyaQULcmJ0Q3VycmVuY3kFC3JidEN1cnJlbmN5BQdyYnREZWJ0BQdyYnREZWJ0BQZyYnRTTEIFBnJidFNMQgUJYnRuU3VibWl0yFoOjtH%2FBNG2eNSRCs5sg5%2B0hqM%3D&__VIEWSTATEGENERATOR=562AC641&"
EVENTVALIDATION="__EVENTVALIDATION=%2FwEWQALdxNfODgK2mPnZAgLStfBwAunYnpgKAqPA0OsHAvq94%2BUEAoyiyLIEAt%2Bi%2BKwEAt6i%2BKwEAt2i%2BKwEAtyi%2BKwEAtui%2BKwEAtqi%2BKwEAtmi%2BKwEAsii%2BKwEAsei%2BKwEAt%2BiuK8EAt%2BitK8EAt%2BisK8EAt%2BijK8EAt%2BiiK8EAt%2BihK8EAt%2BigK8EAt%2BinK8EAt%2Bi2KwEAt%2Bi1KwEAt6iuK8EAt6itK8EAt6isK8EAt6ijK8EAt6iiK8EAt6ihK8EAt6igK8EAt6inK8EAt6i2KwEAt6i1KwEAt2iuK8EAt2itK8EAp6NuLsKAoGNuLsKAoCNuLsKAoONuLsKAoKNuLsKAoWNuLsKAoSNuLsKAoeNuLsKApaNuLsKApmNuLsKAoGN%2BLgKAoGN9LgKAoGN8LgKApuo3L4KAuzl2usFAuzlrscOAuzlsqIHAuzlhhkC7OXq9AgC7OX%2B0wEC7OXCjgoCh9zwlw0Ch9zE8gUCh9zomwMCwova3gMC%2BtaO5QjQA3W%2B9UUq%2FAZRWOKDnDIXnBB0ug%3D%3D&Debt=rbteqty&"

get_bhav_url(){

echo Fetching data for: $1-$2-$3
LAST_STR="fdate1=$1&fmonth1=$2&fyear1=$3&btnSubmit.x=23&btnSubmit.y=9&DDate=$3-$2-$1"

curl 'http://www.bseindia.com/markets/equity/EQReports/Equitydebcopy.aspx' -H 'Cookie: expandable=3c; statstabs=0; detabs=2; marktestat=0; __auc=a9a4fce9153e68d39627c0a356a; _ga=GA1.2.237728404.1450768226; gettabs=0; __utmt=1; __utma=253454874.237728404.1450768226.1454477236.1460029742.4; __utmb=253454874.18.10.1460029742; __utmc=253454874; __utmz=253454874.1450768228.1.1.utmcsr=(direct)|utmccn=(direct)|utmcmd=(none)' -H 'Origin: http://www.bseindia.com' -H 'Accept-Encoding: gzip, deflate' -H 'Accept-Language: en-US,en;q=0.8' -H 'Upgrade-Insecure-Requests: 1' -H 'User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.87 Safari/537.36' -H 'Content-Type: application/x-www-form-urlencoded' -H 'Accept: text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8' -H 'Cache-Control: max-age=0' -H 'Referer: http://www.bseindia.com/markets/equity/EQReports/Equitydebcopy.aspx' -H 'Connection: keep-alive' --data "$VIEWSTATE$EVENTVALIDATION$LAST_STR" --compressed  > $RAW_PATH/$day-$month-$year

echo "Passing data to python module"
python bhavcopy.py $RAW_PATH/$day-$month-$year
#curl 'http://www.bseindia.com/markets/equity/EQReports/Equitydebcopy.aspx' -H 'Cookie: expandable=3c; statstabs=0; detabs=2; marktestat=0; __auc=a9a4fce9153e68d39627c0a356a; _ga=GA1.2.237728404.1450768226; gettabs=0; __utmt=1; __utma=253454874.237728404.1450768226.1454477236.1460029742.4; __utmb=253454874.18.10.1460029742; __utmc=253454874; __utmz=253454874.1450768228.1.1.utmcsr=(direct)|utmccn=(direct)|utmcmd=(none)' -H 'Origin: http://www.bseindia.com' -H 'Accept-Encoding: gzip, deflate' -H 'Accept-Language: en-US,en;q=0.8' -H 'Upgrade-Insecure-Requests: 1' -H 'User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.87 Safari/537.36' -H 'Content-Type: application/x-www-form-urlencoded' -H 'Accept: text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8' -H 'Cache-Control: max-age=0' -H 'Referer: http://www.bseindia.com/markets/equity/EQReports/Equitydebcopy.aspx' -H 'Connection: keep-alive' --data '__VIEWSTATE=%2FwEPDwUJODM1NjAzNjUxD2QWAgIDD2QWEgIBDxYCHgdWaXNpYmxlZxYCAgEPDxYGHgRUZXh0BRNFcXVpdHkgLSAwNy8wNC8yMDE2HgtOYXZpZ2F0ZVVybAVBaHR0cDovL3d3dy5ic2VpbmRpYS5jb20vZG93bmxvYWQvQmhhdkNvcHkvRXF1aXR5L0VRMDcwNDE2X0NTVi5aSVAfAGdkZAIDDxYCHwBnFgICAQ8PFgYfAQUYRGVyaXZhdGl2ZXMgLSAwNy8wNC8yMDE2HwIFSWh0dHA6Ly93d3cuYnNlaW5kaWEuY29tL2Rvd25sb2FkL0JoYXZjb3B5L0Rlcml2YXRpdmUvYmhhdmNvcHkwNy0wNC0xNi56aXAfAGdkZAIFDxYCHwBnFgICAQ8PFgQfAQUlQ3VycmVuY3kgRGVyaXZhdGl2ZSAvSVJEIC0gMDYvMDQvMjAxNh8CBUtodHRwOi8vd3d3LmJzZWluZGlhLmNvbS9ic2VkYXRhL0NJTUxfYmhhdmNvcHkvQ3VycmVuY3lCaGF2Q29weV8yMDE2MDQwNi5aSVBkZAIHDxYCHwBnFgICAQ8PFgYfAQURRGVidCAtIDA2LzA0LzIwMTYfAgVHaHR0cDovL3d3dy5ic2VpbmRpYS5jb20vZG93bmxvYWQvQmhhdmNvcHkvRGVidC9ERUJUQkhBVkNPUFkwNjA0MjAxNi56aXAfAGdkZAIJDxYCHwBnFgICAQ8PFgYfAQUQU0xCIC0gMDYvMDQvMjAxNh8CBT5odHRwOi8vd3d3LmJzZWluZGlhLmNvbS9kb3dubG9hZC9CaGF2Y29weS9TTEIvU1EwNjA0MTZfQ1NWLlpJUB8AZ2RkAhUPEGQQFSACREQCMDECMDICMDMCMDQCMDUCMDYCMDcCMDgCMDkCMTACMTECMTICMTMCMTQCMTUCMTYCMTcCMTgCMTkCMjACMjECMjICMjMCMjQCMjUCMjYCMjcCMjgCMjkCMzACMzEVIAJERAExATIBMwE0ATUBNgE3ATgBOQIxMAIxMQIxMgIxMwIxNAIxNQIxNgIxNwIxOAIxOQIyMAIyMQIyMgIyMwIyNAIyNQIyNgIyNwIyOAIyOQIzMAIzMRQrAyBnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2RkAhkPEGQQFQsEWVlZWQQyMDE2BDIwMTUEMjAxNAQyMDEzBDIwMTIEMjAxMQQyMDEwBDIwMDkEMjAwOAQyMDA3FQsEWVlZWQQyMDE2BDIwMTUEMjAxNAQyMDEzBDIwMTIEMjAxMQQyMDEwBDIwMDkEMjAwOAQyMDA3FCsDC2dnZ2dnZ2dnZ2dnZGQCHw8WAh8AZxYCAgEPDxYGHwEFE0VxdWl0eSAtIDA1LzAxLzIwMTYfAgVBaHR0cDovL3d3dy5ic2VpbmRpYS5jb20vZG93bmxvYWQvQmhhdkNvcHkvRXF1aXR5L0VRMDUwMTE2X0NTVi5aSVAfAGdkZAIhDw8WBB8BBR5ObyBGaWxlIGF2YWlsYWJsZSBmb3IgRG93bmxvYWQfAGhkZBgBBR5fX0NvbnRyb2xzUmVxdWlyZVBvc3RCYWNrS2V5X18WCgUHcmJ0ZXF0eQUHcmJ0RGVyaQUHcmJ0RGVyaQULcmJ0Q3VycmVuY3kFC3JidEN1cnJlbmN5BQdyYnREZWJ0BQdyYnREZWJ0BQZyYnRTTEIFBnJidFNMQgUJYnRuU3VibWl0yFoOjtH%2FBNG2eNSRCs5sg5%2B0hqM%3D&__VIEWSTATEGENERATOR=562AC641&__EVENTVALIDATION=%2FwEWQALdxNfODgK2mPnZAgLStfBwAunYnpgKAqPA0OsHAvq94%2BUEAoyiyLIEAt%2Bi%2BKwEAt6i%2BKwEAt2i%2BKwEAtyi%2BKwEAtui%2BKwEAtqi%2BKwEAtmi%2BKwEAsii%2BKwEAsei%2BKwEAt%2BiuK8EAt%2BitK8EAt%2BisK8EAt%2BijK8EAt%2BiiK8EAt%2BihK8EAt%2BigK8EAt%2BinK8EAt%2Bi2KwEAt%2Bi1KwEAt6iuK8EAt6itK8EAt6isK8EAt6ijK8EAt6iiK8EAt6ihK8EAt6igK8EAt6inK8EAt6i2KwEAt6i1KwEAt2iuK8EAt2itK8EAp6NuLsKAoGNuLsKAoCNuLsKAoONuLsKAoKNuLsKAoWNuLsKAoSNuLsKAoeNuLsKApaNuLsKApmNuLsKAoGN%2BLgKAoGN9LgKAoGN8LgKApuo3L4KAuzl2usFAuzlrscOAuzlsqIHAuzlhhkC7OXq9AgC7OX%2B0wEC7OXCjgoCh9zwlw0Ch9zE8gUCh9zomwMCwova3gMC%2BtaO5QjQA3W%2B9UUq%2FAZRWOKDnDIXnBB0ug%3D%3D&Debt=rbteqty&fdate1=1&fmonth1=2&fyear1=2016&btnSubmit.x=23&btnSubmit.y=9&DDate=2016-2-1' --compressed  > $RAW_PATH/$day-$month-$year

}


# Year
for year in $(seq 2016 2016);
do
#  echo Year: $year
  for month in $(seq 1 12);
  do
#    echo Month: $month
    for day in $(seq 5 31);
    do
#      echo Date: $day-$month-$year
      get_bhav_url $day $month $year 
      sleep 1s
    done 
  done
done


