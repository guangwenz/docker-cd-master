#!/bin/sh

echo "Patching gitlab hook to use http scheme"
sed -i "s@payload\['repository'\]\['url'\]@payload\['repository'\]\['git_http_url'\]@" /usr/lib/python2.7/site-packages/buildbot/www/hooks/gitlab.py

sh /usr/src/buildbot/docker/start_buildbot.sh