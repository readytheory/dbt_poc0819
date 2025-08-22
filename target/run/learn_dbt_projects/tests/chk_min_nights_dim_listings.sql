select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      /*Singular tests are stored under tests folder and it will be executed on a model*/


select 
    *
from 
    DEV_DEVWIP_DB.A168940.dim_listings
where minimum_nights < 1
      
    ) dbt_internal_test