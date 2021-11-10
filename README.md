# FBID Final Assigment (MUIRST - ETSIT - UPM) - Predict flight delays

Jaime Sáez de Buruaga

Guillermo Sanz

NOTE: All the commands need to be executed in the root working directory

## Execution with Docker:

```
./manage --up docker
```

## Execution with Docker Compose:

```
./manage --up compose
```

## Brign down the network:

```
./manage --down
```


## Other options:

### Download the flights data

```
./manage --download
```

### Train the model with pySpark

```
./manage --train
```

### Package the scala project in a Jar file

```
./manage --package
```
NOTE: If the project is already packaged, this command will fail.

### Pull the docker images (optional)

```
./manage --pull
```