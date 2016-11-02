FROM kibana:4.1.11
MAINTAINER ashmastaflash


COPY runner.sh /runner.sh

CMD /bin/sh /runner.sh
