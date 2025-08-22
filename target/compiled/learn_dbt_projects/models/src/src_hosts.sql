with raw_hosts as (
    select * from DEV_DEVWIP_DB.A168940.raw_hosts
)
select 
    id as host_id,
    name as host_name,
    is_superhost,
    created_at,
    updated_at
from 
    raw_hosts