FROM kibana:4.2
MAINTAINER ashmastaflash


COPY runner.sh /runner.sh

CMD /bin/sh /runner.sh
