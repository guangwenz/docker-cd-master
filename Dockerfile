FROM buildbot/buildbot-master:master
MAINTAINER GUANGWEN ZHOU <zgwmike@hotmail.com>

RUN pip install txrequests && \
	rm -r /root/.cache

COPY start.sh /usr/src/buildbot/docker
CMD ["dumb-init", "/usr/src/buildbot/docker/start.sh"]