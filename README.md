## Setup
* Run docker-compose up superset-init
* Run docker-compose up -d (after superset-init completes)

Superset available at localhost:8088
Presto UI available at localhost:8080

Connect Superset to PostgreSQL Catalog in Trino through Superset "Add Database" in UI.
Use connection string "trino://trino@trino:8080/postgresql"

Connect Superset to Elasticsearch Catalog in Trino through Superset "Add Database" in UI.
Use connection string "trino://trino@trino:8080/elasticsearch"