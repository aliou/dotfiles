Download and extract
```
wget "https://ftp.postgresql.org/pub/source/v9.6.2/postgresql-9.6.2.tar.bz2"
# etc
```

Setup deps from hombrew because yolo
```
export LDFLAGS="-L/usr/local/opt/openssl/lib -L/usr/local/opt/readline/lib"
export CPPFLAGS="-I/usr/local/opt/openssl/include -I/usr/local/opt/openssl/include"
```

Options modulo the version (9.6.2)
```
./configure --disable-debug \
--prefix=/Users/alioudiallo/.pgenv/versions/9.6.2 \
--datadir=/Users/alioudiallo/.pgenv/versions/9.6.2/share/postgresql \
--libdir=/Users/alioudiallo/.pgenv/versions/9.6.2/lib \
--enable-thread-safety \
--with-bonjour \
--with-gssapi \
--with-ldap \
--with-openssl \
--with-pam \
--with-libxml \
--with-libxslt \
--with-uuid=e2fs
```

Run make
```
make
make install-world datadir=/Users/alioudiallo/.pgenv/versions/9.6.2/share/postgresql libdir=/Users/alioudiallo/.pgenv/versions/9.6.2/lib pkglibdir=/Users/alioudiallo/.pgenv/versions/9.6.2/lib/postgresql
```

Start the database on default port (5432)
```
./bin/pg_ctl -D var/postgres/ -l log/logfile start
```
