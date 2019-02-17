# Nono150 DockerCompose

- CentOS latest(centos7 2019-02-17)
- PHP7.2
- MySQL5,7

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
$ vim sudo /etc/hosts
```
 
```
127.0.0.1 nono150.test
127.0.0.1 hpbg.nono150.test
```

You can access http://nono150.test/

## Directory

```
├ apps : Document root
├ docker-compose.yml
└ docker
  ├ web
    ├ Dockerfile : centos, php, apatch install
    ├ conf.d
      ├ vhosts.conf
    ├ php.ini
  ├ db
    ├ data : mysql data
      ├ 
    ├ Dockerfile : mysql install
    ├ my.cnf
  ├ logs : server log
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

