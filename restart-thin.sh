#!/usr/bin/sh

/application/thin stop
/application/thin start -d -p 80
