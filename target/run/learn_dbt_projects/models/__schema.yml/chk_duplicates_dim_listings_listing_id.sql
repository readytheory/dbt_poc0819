select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      

    select count(*),listing_id
    from DEV_DEVWIP_DB.A168940.dim_listings
    group by listing_id
    having count(*)> 1


      
    ) dbt_internal_test