FROM kibana:4.6.2
MAINTAINER ashmastaflash


COPY runner.sh /runner.sh

CMD /bin/sh /runner.sh
