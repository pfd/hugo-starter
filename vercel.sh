#!/bin/bash

echo "VERCEL_ENV: $VERCEL_ENV"

if [[ $VERCEL_ENV == "production"  ]] ; then 
  amazon-linux-extras install golang1.11 && hugo -e="production" --gc --minify --ignoreCache --verbose
else 
  amazon-linux-extras install golang1.11 && hugo -e="staging" --gc --minify --ignoreCache --verbose
fi



