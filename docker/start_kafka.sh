#!/bin/bash

cd /kafka/

bin/kafka-server-start.sh -daemon config/server.properties --override listeners=${KAFKA_LISTENERS} --override advertised.listeners=${KAFKA_ADVERTISED_LISTENERS} --override zookeeper.connect=${KAFKA_ZOOKEEPER_CONNECT}

sleep 5

echo "------------- Creando topics... -------------"


bin/kafka-topics.sh \
    --create \
    --bootstrap-server kafka:9092 \
    --replication-factor 1 \
    --partitions 1 \
    --topic flight_delay_classification_request \

# sleep 2

# /kafka/bin/kafka-topics.sh --bootstrap-server kafka:9092 --list

sleep infinity

