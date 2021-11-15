#!/bin/bash

cd /opt/spark/

./bin/spark-submit --class es.upm.dit.ging.predictor.MakePrediction --master spark://master:7077  --packages org.mongodb.spark:mongo-spark-connector_2.12:3.0.1,org.apache.spark:spark-sql-kafka-0-10_2.12:3.0.0 /jar/flight_prediction_2.12-0.1.jar
