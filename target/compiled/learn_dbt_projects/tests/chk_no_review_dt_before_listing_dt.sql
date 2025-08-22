/* checks there is no review date that is submitted before its listing was created */
select *
from DEV_DEVWIP_DB.A168940.dim_listings l
inner join DEV_DEVWIP_DB.A168940.fct_reviews r using (listing_id)
where l.created_at >= r.review_date