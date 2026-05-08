select
    dispatching_base_num,
    pickup_datetime,
    dropOff_datetime as dropoff_datetime,
    PUlocationID as pickup_location_id,
    DOlocationID as dropoff_location_id
from {{ source('raw', 'fhv_tripdata') }}
where dispatching_base_num is not null