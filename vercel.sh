#!/bin/bash

echo "VERCEL_ENV: $VERCEL_ENV"

if [[ $VERCEL_ENV == "production"  ]] ; then 
  amazon-linux-extras install golang1.11 && hugo --gc --minify --ignoreCache --verbose && npm run algolia
else 
  amazon-linux-extras install golang1.11 && hugo -e="staging" --gc --minify --ignoreCache --verbose && npm run algolia
fi



