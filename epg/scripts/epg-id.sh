#!/bin/bash
set -e

# Go into iptv-org-epg repo and install dependencies
cd iptv-org-epg
npm install

# Generate Pix EPG
npm run grab --- --channels=../epg/scripts/pix.xml --output=../epg/pix.xml --days=3

# Compress EPG xml files
cd ../epg
gzip -k -f -9 pix.xml

# Optional cleanup
# rm id*.xml.gz
# rm pix.xml

exit 0
