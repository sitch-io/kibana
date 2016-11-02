FROM kibana:5.0
MAINTAINER ashmastaflash


COPY runner.sh /runner.sh

CMD /bin/sh /runner.sh
