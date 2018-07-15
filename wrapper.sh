#!/bin/bash

${KAFKA_HOME}/bin/generate-conf.sh > ${KAFKA_HOME}/config/server.properties
exec ${KAFKA_HOME}/bin/kafka-server-start.sh ${KAFKA_HOME}/config/server.properties  