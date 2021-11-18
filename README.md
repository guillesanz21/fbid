# FBID Final Assigment (MUIRST - ETSIT - UPM) - Predict flight delays

Jaime Sáez de Buruaga

Guillermo Sanz

NOTE: All the commands need to be executed in the root working directory

The prediction is done in the following link:
`http://localhost:5000/flights/delays/predict_kafka`

The spark UI can be accessed in the following link:
`http://localhost:8080/nifi`

Improvements:

- [X] Spark-submit
- [X] Docker
- [X] Docker compose
- [ ] Airflow
- [ ] K8
- [ ] Google Cloud

## Execution Steps:

```bash
./manage --up download
./manage --up package
./manage --up {docker, compose}
```

## Execution with Docker:

```
./manage --up docker
```

## Execution with Docker Compose:

This is the fastest way. In addition, this one deploys 5 workers instead of only 1.
```
./manage --up compose
```

## Brign down the network:

```
./manage --down
```


## Other options:

### Download the flights data

Needed for the first time

```
./manage --download
```

### Train the model with pySpark

Needed for the first time

```
./manage --train
```

### Package the scala project in a Jar file

Needed for the first time

```
./manage --package
```

NOTE: If the project is already packaged, this command will fail. For re-package, 
remove the `flight_prediction/target` directory and the `docker/resources/flight_prediction_2.12.0.1.jar` file before running this option.

### Pull the docker images (optional)

```
./manage --pull
```
