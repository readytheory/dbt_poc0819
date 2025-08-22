
  
    

        create or replace transient table DEV_DEVWIP_DB.A168940.dim_listings_with_hosts
         as
        (with 
listing as (
   select * from DEV_DEVWIP_DB.A168940.dim_listings
),
host as (
    select * from DEV_DEVWIP_DB.A168940.dim_hosts
)

select 
    listing.listing_id,
    listing.listing_name,
    listing.room_type,
    listing.minimum_nights,
    listing.price,
    host.host_id,
    host.host_name,
    host.is_superhost as host_is_superhost,
    listing.created_at,
    greatest(listing.updated_at,host.updated_at) as updated_at
from listing
    left join host using(host_id)
        );
      
  