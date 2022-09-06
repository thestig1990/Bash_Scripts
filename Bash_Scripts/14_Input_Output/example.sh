#!/bin/bash

[ $# -ne 1 ] && echo "1 argument required, got $#" && exit 1

WEBSITE_URL=$1
#curl -sIL $WEBSITE_URL
#curl -sIL $WEBSITE_URL | grep "200" > /dev/null 2>&1
curl -sIL $WEBSITE_URL | grep "200"

[ $? -ne 0 ] && echo "URL haven't responded 200" && exit 1

echo "URL responded 200"
