cd /tmp
mkdir destdir installdir

wget http://www.haproxy.org/download/1.6/src/haproxy-1.6.9.tar.gz
tar xzf haproxy-1.6.9.tar.gz
cd haproxy-1.6.9
# ./configure --prefix /usr/local 
make USE_ZLIB=1 USE_OPENSSL=1 USE_PCRE=1 TARGET=linux2628 
make install DESTDIR=/tmp/installdir
cd /tmp/destdir
fpm -s dir -t rpm -n haproxy -v 1.6.9 -C /tmp/installdir -p haproxy-VERSION_ARCH.rpm usr/local/sbin usr/local/share/man usr/local/doc/haproxy
