# go-dockerfile-example

## Build. Variant 1

### build

```
docker build --tag docker-gs-ping .
```

### used images, create tag, rmi image

```
docker images
```

```
docker image tag docker-gs-ping:latest docker-gs-ping:v1.0
```

```
docker image rm docker-gs-ping:v1.0
```

## Build. Variant 2

```
docker build -t docker-gs-ping:multistage -f Dockerfile.multistage .
```

## Run

### Variant 1
```
docker run docker-gs-ping
```
### Variant 2
```
docker run docker-gs-ping:multistage
```

