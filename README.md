## Setup
* Run docker-compose up superset-init
* Run docker-compose up -d (after superset-init completes)

Superset available at localhost:8088
Presto UI available at localhost:8080

Connect Superset to Trino through Superset "Add Database" in UI.
Use connection string "trino://trino@trino:8080/tpch"