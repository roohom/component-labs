

./bin/sql-gateway.sh start

./bin/sql-gateway.sh start -Dsql-gateway.endpoint.rest.bind-address=localhost -Dsql-gateway.endpoint.rest.bind-port=8083
./bin/sql-gateway.sh start-foreground -Dsql-gateway.endpoint.rest.address=10.122.40.200
./bin/sql-gateway.sh start -Dsql-gateway.endpoint.rest.address=10.122.40.200

./bin/sql-gateway.sh stop