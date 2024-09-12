#!/bin/bash
cd "${0%/*}"
OUTPUT="${1:-tesla_inventory.spl}"
chmod -R u=rwX,go= *
chmod -R u-x+X *
chmod -R u=rwx,go= *
cd ..
tar -cpzf $OUTPUT --exclude=.* --exclude=package.json --overwrite tesla_inventory