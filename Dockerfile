FROM rijalati/alpine-zulu-jdk8:latest
MAINTAINER <ritchie@selectstar.com>


RUN apk --no-cache --update add bash \
&& curl --verbose -Ls http://dl.bintray.com/sbt/native-packages/sbt/0.13.15/sbt-0.13.15.tgz > /tmp/sbt-0.13.15.tgz \
&& cd /opt \
&& tar --strip-components=1 -xvf /tmp/sbt-0.13.15.tgz

ENTRYPOINT ["/opt/bin/sbt", "help"]
