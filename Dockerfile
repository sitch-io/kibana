FROM kibana:4.6.2
MAINTAINER ashmastaflash

RUN apt-get update && apt-get install -y \
    psmisc

COPY runner.sh /runner.sh

ENTRYPOINT /bin/sh

CMD /runner.sh
