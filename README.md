# Nono150 DockerCompose

- CentOS 8
- Apache2.4.37
- PHP7.3
- MySQL5.7

## How to set up

```
$ cd docker-nono150
$ docker-compose build
$ docker-compose up -d
```

You can access http://localhost/

### Setting VirtualHost

"/etc/hosts" add

```
$ sudo vim /etc/hosts
```

```
127.0.0.1 nono150.test
127.0.0.1 hpbg.nono150.test
```

You can access http://nono150.test/
You can access http://hpbg.nono150.test/

## Directory

```
├ apps
  ├
├ docker-compose.yml
└ docker
  ├ web
    ├ Dockerfile : centos, php, apatch install
    ├ start-develop.sh : apps directory symbolic link web/data directory
    ├ conf.d
      ├ vhosts.conf
    ├ conf.modules.d
      ├ 00-mpm.conf
    ├ data : Document root
      ├
  ├ db
    ├ data : mysql data
      ├
    ├ Dockerfile : mysql install
    ├ my.cnf
  ├ logs : server & sql log
    ├
```

## Bash

```
$ docker-compose exec web bash
$ cd /var/www/html
```

## MySQL

- Host: nono150_mysql or 192.168.202.2
- User: root
- Password: root
- Port: 3308

## MailHog

http://nono150.test:8025/

## StartDevelop

```
$ docker-compose exec web bash
sh start-develop.sh
```
