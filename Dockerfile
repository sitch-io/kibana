FROM kibana:4.4
MAINTAINER ashmastaflash

RUN apt-get update && apt-get install -y \
    psmisc

COPY runner.sh /runner.sh

ENTRYPOINT /bin/sh

CMD /runner.sh
