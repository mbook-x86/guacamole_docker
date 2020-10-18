# Create initdb.sql for postgresql container.
docker run --rm guacamole/guacamole /opt/guacamole/bin/initdb.sh --postgres > ./pginit/initdb.sql

# Create Self Certificate for nginx
openssl genrsa 2048 > server.key
openssl req -new -key server.key > server.csr
openssl x509 -days 3650 -req -signkey server.key < server.csr > server.crt
