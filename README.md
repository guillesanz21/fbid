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

* Download any requirement:

```bash
./manage --up download
./manage --up package
```

* Deploy with docker (without Airflow) or docker-compose:
```bash
./manage --up {docker, compose}
```

* Deploy with docker training with Airflow:
```bash
./manage --up airflow
```

## Apache airflow questions

Explain the architecture of apache airflow (see the official documentation of Apache Airflow).

!(AIRFLOW_arch.png)
Componentes:
* Se compone de un *scheduler*, encargado de manejar tanto los workflows disparados como el paso de tareas para ejecución.
* También contiene un *executor* encargado de manejar las tareas de ejecución.
* Contiene también un *webserver*, con una interfaz para inspeccionar, disparar y debugear el comportamiento de DAGs y tareas. 
* Un directorio de DAGs, leído por el webserver y el executor.
* Una base de metadatos.

Analyzing the setup.py: what happens if the task fails?, what is the peridocity of the task?

* Cada cinco minutos se vuelve a lanzar, con un total de 3 intentos (default_args.retries = 3, default_args.retry_delay = 5 min).

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
