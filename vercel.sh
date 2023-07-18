#!/bin/bash

echo "VERCEL_ENV: $VERCEL_ENV"
echo "HUGO_VERSION: $HUGO_VERSION"

if [[ $VERCEL_ENV == "production"  ]] ; then 
  amazon-linux-extras install golang1.11 && hugo --gc --minify --ignoreCache --verbose
else 
  amazon-linux-extras install golang1.11 && hugo -e="staging" --gc --minify --ignoreCache --verbose
fi



