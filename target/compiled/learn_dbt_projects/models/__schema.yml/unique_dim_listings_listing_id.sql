
    
    

select
    listing_id as unique_field,
    count(*) as n_records

from DEV_DEVWIP_DB.A168940.dim_listings
where listing_id is not null
group by listing_id
having count(*) > 1


