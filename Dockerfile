FROM kibana:4.5
MAINTAINER ashmastaflash

RUN apt-get update && apt-get install -y \
    psmisc

COPY runner.sh /runner.sh

ENTRYPOINT /runner.sh

# CMD /runner.sh
