
    
    

with child as (
    select host_id as from_field
    from DEV_DEVWIP_DB.A168940.dim_listings
    where host_id is not null
),

parent as (
    select host_id as to_field
    from DEV_DEVWIP_DB.A168940.dim_hosts
)

select
    from_field

from child
left join parent
    on child.from_field = parent.to_field

where parent.to_field is null


