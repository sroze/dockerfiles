# Tideways daemon

This docker container contains the Tideways daemon.

## Usage

Add the Docker image to your Docker-Compose configuration:
```
tideways:
    image: docker.io/sroze/tideways
```

Then, in your container running PHP, update your `php.ini` with the following examples:
```
tideways.connection = tcp://tideways:9135
```
