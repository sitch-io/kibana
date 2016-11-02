#!/bin/bash
# ...adapted... from the original docker-entrypoint.sh

set -e

# Add kibana as command if needed
if [[ "$1" == -* ]]; then
	set -- kibana "$@"
fi

# Run as user "kibana" if the command is "kibana"
if [ "$1" = 'kibana' ]; then
	if [ "$ELASTICSEARCH_URL" ]; then
		sed -ri "s!^(\#\s*)?(elasticsearch\.url:).*!\2 '$ELASTICSEARCH_URL'!" /etc/kibana/kibana.yml
	fi

	set -- gosu kibana tini -- "$@"
fi

echo "Starting Kibana"
/opt/kibana/bin/kibana &
sleep 30
echo "Installing Timelion"
/opt/kibana/bin/kibana plugin -i elastic/timelion
echo "Killing Kibana"
killall kibana
echo "Starting Kibana again"
/opt/kibana/bin/kibana
