#!/bin/bash

cd /kafka/

(bin/kafka-server-start.sh config/server.properties)

# No funciona. El comando anterior se queda en modo "log" y, por alguna razón no permite ejecutar los siguientes comandos.
# Si se pone un "&" para correrlo en background, se ejecutan las siguientes lineas, pero justo después se para el contenedor (da un
# error de que no se puede establecer conexión o algo así.)
# He probado a ejecutar ambos comandos en el Dockerfile (con CMD, ENTRYPOINT y todo lo que se me ha ocurrido), he probado a 
# hacer un sleep entre medias, a correrlo en background y luego intentar resumirlo, y nada.
# La solución temporal que se me ocurre: ejecutar el comando anterior únicamente y luego hacer un "docker exec kafka [comando topics]"

# echo "------------- Creando topics... -------------"  \
# && bin/kafka-topics.sh \
#     --create \
#     --bootstrap-server localhost:9092 \
#     --replication-factor 1 \
#     --partitions 1 \
#     --topic flight_delay_classification_request \

echo "Done"



