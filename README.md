# Exterior - share host machine to your dockerized stack.

[![](https://images.microbadger.com/badges/image/baleyko/exterior.svg)](https://microbadger.com/images/baleyko/exterior "Get your own image badge on microbadger.com")

Use case #0

```shell
$ git clone https://github.com/baleyko/exterior.git && cd exterior && docker build -t exterior .
```

then

```shell
$ docker run -it --rm --env PORTS="80" -p "8080:80" exterior:latest
```

then

```shell
curl http://YOUR_DOCKER_MACHINE_IP:8080</code>
```

enjoy your response of the service that bound to 80th port 
