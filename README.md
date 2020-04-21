# docker-php-nginx-test

Test case for a custom docker build of https://github.com/TrafeX/docker-php-nginx

## Steps

- Build `docker build -t test .`
- Run `docker run -p 30000:8080 test`
- http://localhost:30000/foo.html should show `bar`
