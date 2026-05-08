select
    VendorID as vendor_id,
    tpep_pickup_datetime as pickup_datetime,
    tpep_dropoff_datetime as dropoff_datetime,
    PULocationID as pickup_location_id,
    DOLocationID as dropoff_location_id,
    passenger_count,
    trip_distance,
    fare_amount,
    total_amount
from read_parquet('data/yellow/*.parquet', filename=true)
where strftime(tpep_pickup_datetime, '%Y-%m') = regexp_extract(filename, '(\d{4}-\d{2})', 1)