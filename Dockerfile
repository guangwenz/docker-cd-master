FROM buildbot/buildbot-master:master
MAINTAINER GUANGWEN ZHOU <zgwmike@hotmail.com>

RUN pip install txrequests && \
	rm -r /root/.cache