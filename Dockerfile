FROM kibana:4.3
MAINTAINER ashmastaflash

RUN apt-get update && apt-get install -y \
    psmisc

COPY runner.sh /runner.sh

CMD /bin/sh /runner.sh
