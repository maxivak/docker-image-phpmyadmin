[NOT WORK]

# Overview

* Run phpMyAdmin with Alpine, supervisor, nginx and PHP FPM.

* based on https://hub.docker.com/r/phpmyadmin/phpmyadmin/


* container needs running mysql container



# Build

```
docker build -t my-phpmyadmin github.com/maxivak/docker-image-phpmyadmin.git
```

* or download and build locally
```
docker build -t my-phpmyadmin .
```


# Run

* connect to mysql container 'my-mysql'

```
docker run -d --name my-phpmyadmin -p 8080:80 \
--link my-mysql:db \
my/phpmyadmin

```

## Config

* config
```
-v /some/local/directory/config.user.inc.php:/config.user.inc.php
```


* run with custom config
```
docker run -d --name my-phpmyadmin -p 8081:80 \
--link my-mysql:db \
-v "$PWD/server-phpmyadmin/config.user.inc.php":/config.user.inc.php \
my/phpmyadmin

```

## PMA_ABSOLUTE_URI

```
-e PMA_ABSOLUTE_URI=http://mysite.com:8000/myadmin/
```