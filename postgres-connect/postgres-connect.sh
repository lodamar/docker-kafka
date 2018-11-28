curl -i -X POST -H "Accept:application/json" -H "Content-Type:application/json" localhost:8083/connectors/ -d '{
        "name": "postgres_connect",
        "config": {
                "connector.class": "io.confluent.connect.jdbc.JdbcSourceConnector",
                "connection.user":"postgres",
                "connection.password":"root",
                "key.converter": "io.confluent.connect.avro.AvroConverter",
                "key.converter.schema.registry.url": "http://schema-registry:8081",
                "value.converter": "io.confluent.connect.avro.AvroConverter",
                "value.converter.schema.registry.url": "http://schema-registry:8081",
                "connection.url": "jdbc:postgresql://postgres:5432/",
                "mode": "incrementing",
                "table.whitelist": "ids",
                "topic.prefix": "postgres-connect-"
        }
}'

curl -i -X GET -H "Accept:application/json" -H "Content-Type:application/json" localhost:8083/connectors/postgres_connect