Apache-Php image for ARM

Apache/2.4.25
PHP/5.6.30

RootDirectory is /var/www
HTTP only on port 80

```
docker build -t mielune/alpine-apache-arm .

docker run --name apache-test -p 8000:80 mielune/alpine-apache-arm

```
