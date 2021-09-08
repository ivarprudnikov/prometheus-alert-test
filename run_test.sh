#!/bin/bash -e

TEST_DIR=`pwd`
DOCKER_TMP_DIR=/tmp
PROMETHEUS_VERSION=v2.29.1

docker run --rm \
	--volume $TEST_DIR:$DOCKER_TMP_DIR \
	--workdir $DOCKER_TMP_DIR \
	--user root \
	--entrypoint /bin/promtool \
	prom/prometheus:$PROMETHEUS_VERSION test rules prometheus-alerts-test.yaml

