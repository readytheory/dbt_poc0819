

    select count(*),listing_id
    from DEV_DEVWIP_DB.A168940.dim_listings
    group by listing_id
    having count(*)> 1

