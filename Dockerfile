FROM centos:7.2.1511
RUN yum install -y \
  gcc \
  make \
  openssl-devel \
  readline-devel \
  rpm-build \
  ruby \
  ruby-devel \
  wget \
  zlib-devel 
RUN gem install fpm
ADD build_haproxy.sh /usr/local/bin/
