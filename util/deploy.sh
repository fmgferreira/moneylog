#!/bin/bash
# Build website https://moneylog.aurelio.net
# The actual deploy is handled automatically by Netlify.

# Enter repo root
cd $(dirname "$0")
cd ..
root="$PWD"

deploy_dir="$root/public"

# Copy main file
cp moneylog.html "$deploy_dir/index.html"

# Copy other files
cp -r \
  moneylog.css \
  moneylog.js \
  css/ \
  storage/ \
  "$deploy_dir"

