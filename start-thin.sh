#!/bin/sh
cd /application

# Append thin to gemfile if it isn't already there
LINE='gem "thin"'
FILE=Gemfile
grep -q "$LINE" "$FILE" || echo "$LINE" >> "$FILE"

bundle install
thin start -d -a 0.0.0.0 -p 80

ruby /listener.rb
