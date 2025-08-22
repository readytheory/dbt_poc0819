
    
    

with all_values as (

    select
        room_type as value_field,
        count(*) as n_records

    from DEV_DEVWIP_DB.A168940.dim_listings
    group by room_type

)

select *
from all_values
where value_field not in (
    'Entire home/apt','Private room','Shared room','Hotel room'
)


