#!/home/karl/anaconda3/bin/python

import subprocess
import re

result = subprocess.run(['iwconfig'], stdout=subprocess.PIPE,
                       stderr=subprocess.PIPE).stdout.decode('utf8').split('\n')
SSID_re = re.compile(r'ESSID:"(.*?)"')
quality_re = re.compile(r'Link Quality=(\d\d\d?)/(\d\d\d?)')

SSID = []
qual = []

for line in result:
    if not SSID:
        SSID = SSID_re.findall(line)
    if not qual:
        qual = quality_re.findall(line)
    # print(qual)
    if SSID:
        continue
    if qual:
        continue
SSID = SSID[0]
qual = f'{int(qual[0][0]) / int(qual[0][1]) * 100:.0f}'

if not SSID:
    raise ValueError('SSID not found!')
if not qual:
    raise ValueError('quality not found!')

print(f'{SSID}:{qual}%', end='')

#ext_ip = subprocess.run(
#        ['dig', '@resolver1.opendns.com', 'ANY', 'myip.opendns.com', '+short'],
#        stdout=subprocess.PIPE, stderr=subprocess.PIPE).stdout.decode('utf8')
