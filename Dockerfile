FROM kibana:4.3
MAINTAINER ashmastaflash


COPY runner.sh /runner.sh

CMD /bin/sh /runner.sh
