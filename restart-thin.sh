#!/usr/bin/sh
cd /application
thin stop
thin start -d -p 80
