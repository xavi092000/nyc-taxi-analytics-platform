select
    service_type,
    extract(year from pickup_datetime) as revenue_year,
    extract(month from pickup_datetime) as revenue_month,
    pickup_zone,
    count(*) as total_monthly_trips,
    sum(total_amount) as revenue_monthly_total_amount
from {{ ref('fct_trips') }}
group by 1, 2, 3, 4