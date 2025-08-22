

with  __dbt__cte__src_reviews as (
with raw_reviews as (
    select * from DEV_DEVWIP_DB.A168940.raw_reviews
)
select 
    listing_id,
    date as review_date,
    reviewer_name,
    comments as review_text,
    sentiment as review_sentiment
from 
    raw_reviews
), src_reviews as (
    select * from __dbt__cte__src_reviews
)
select
    *
from src_reviews
where review_text is not null

