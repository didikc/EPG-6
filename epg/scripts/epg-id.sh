#!/bin/bash

cd /home/runner/work/EPG-2/EPG-2/iptv-org-epg && npm install

# Pix EPG

npm run grab --- --channels=../epg/scripts/pix.xml --output=../epg/pix.xml --days=3

# Compress EPG xml files
cd ../epg/

gzip -k -f -9 ../epg/pix.xml

exit 0
