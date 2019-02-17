FROM centos:latest

MAINTAINER docker-web

# update yum
RUN yum -y update
RUN yum -y install yum-utils
RUN yum clean all

RUN yum -y install epel-release
RUN yum -y groupinstall "Development Tools"
RUN yum -y install wget git vim zsh curl

# install remi repo
RUN wget http://rpms.famillecollet.com/enterprise/remi-release-7.rpm
RUN rpm -Uvh remi-release-7*.rpm
RUN yum-config-manager --enable remi-php72

# install php72
RUN \
  yum -y install \
    php-devel \
    php php-common \
    php-mbstring \
    php-mcrypt \
    php-xml \
    php-mysqlnd \
    php-pdo \
    php-gd \
    php-xml \
    php-cli \
    php-intl \
    php-opcache --nogpgcheck

# clear yum cache
RUN yum clean all

# install composer
RUN curl -sS https://getcomposer.org/installer | php && \
  mv composer.phar /usr/local/bin/composer

# timezone setting
RUN cp /etc/localtime /etc/localtime.org
RUN ln -sf /usr/share/zoneinfo/Asia/Tokyo /etc/localtime

# for web
EXPOSE 80

COPY ./conf.d/vhosts.conf /etc/httpd/conf.d/vhosts.conf

CMD /usr/sbin/httpd -DFOREGROUND
