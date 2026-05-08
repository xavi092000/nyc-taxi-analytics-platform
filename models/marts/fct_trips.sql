select
    t.service_type,
    t.pickup_datetime,
    t.dropoff_datetime,
    t.pickup_location_id,
    pz.zone as pickup_zone,
    pz.borough as pickup_borough,
    t.dropoff_location_id,
    dz.zone as dropoff_zone,
    dz.borough as dropoff_borough,
    t.trip_distance,
    t.fare_amount,
    t.total_amount
from {{ ref('int_trips') }} t
left join {{ ref('dim_zones') }} pz
    on t.pickup_location_id = pz.location_id
left join {{ ref('dim_zones') }} dz
    on t.dropoff_location_id = dz.location_id