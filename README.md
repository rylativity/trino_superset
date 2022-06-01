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


### Querying Data From S3
```
CREATE SCHEMA IF NOT EXISTS hive.taxi;

CREATE TABLE IF NOT EXISTS hive.taxi.trips (
  vendor_id VARCHAR ,
  pickup_datetime  VARCHAR,
  dropoff_datetime VARCHAR,
  passenger_count  VARCHAR ,
  trip_distance        VARCHAR,
  pickup_longitude  VARCHAR ,
  pickup_latitude VARCHAR ,
  rate_code VARCHAR ,
  store_and_fwd_flag VARCHAR,
  dropoff_longitude VARCHAR,
  dropoff_latitude VARCHAR ,
  payment_type VARCHAR ,
  fare_amount VARCHAR ,
  surcharge VARCHAR ,
  mta_tax VARCHAR ,
  tip_amount VARCHAR ,
  tolls_amount VARCHAR ,
  total_amount VARCHAR 
  
  
)
WITH (
  external_location = 's3a://nyc-tlc/trip data/yellow_tripdata_2010-12.csv',
  format = 'CSV'
);
```