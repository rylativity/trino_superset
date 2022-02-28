## Setup
* Run docker-compose up superset-init
* Run docker-compose up -d (after superset-init completes)

Superset available at localhost:8088

Trino UI available at localhost:8080

Example jupyter notebooks for adding data to mongo and elasticsearch available in example_notebooks folder.  requirements.txt file contains all python requirements needed.  Create a virtual environment and run the notebooks in jupyter lab to easily add data.

### Connect Superset to Trino through Superset "Add Dashboard" in UI
To add Mongodb Trino, use connection string "trino://trino@trino:8080/mongodb"

To add Elasticsearch Trino, use connection string "trino://trino@trino:8080/elasticsearch"

To add PostgreSQL Catalog in Trino through Superset, use connection string "trino://trino@trino:8080/postgresql"
