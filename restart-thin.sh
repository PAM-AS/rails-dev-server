#!/bin/sh
cd /application
thin stop
bundle install
thin start -d -a 0.0.0.0 -p 80
