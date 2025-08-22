select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select listing_id
from DEV_DEVWIP_DB.A168940.dim_listings
where listing_id is null



      
    ) dbt_internal_test