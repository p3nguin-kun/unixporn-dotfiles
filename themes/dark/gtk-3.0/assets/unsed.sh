#!/bin/sh
sed -i \
         -e 's/rgb(0%,0%,0%)/#0B0C0B/g' \
         -e 's/rgb(100%,100%,100%)/#d3ccc2/g' \
    -e 's/rgb(50%,0%,0%)/#0B0C0B/g' \
     -e 's/rgb(0%,50%,0%)/#C56A48/g' \
 -e 's/rgb(0%,50.196078%,0%)/#C56A48/g' \
     -e 's/rgb(50%,0%,50%)/#0B0C0B/g' \
 -e 's/rgb(50.196078%,0%,50.196078%)/#0B0C0B/g' \
     -e 's/rgb(0%,0%,50%)/#d3ccc2/g' \
	"$@"
