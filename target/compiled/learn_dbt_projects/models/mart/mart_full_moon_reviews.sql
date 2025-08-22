


with fct_reviews as (
    select * from DEV_DEVWIP_DB.A168940.fct_reviews
),
full_moon_dates as (
    select * from DEV_DEVWIP_DB.A168940.seed_full_moon_dates
)

select 
    r.*,
    case 
        when fm.full_moon_date is null then 'Not full moon'
        else 'Full moon'
    end as is_full_moon

from 
    fct_reviews r 
    left join seed_full_moon_dates fm
        on (to_date(r.review_date)=dateadd(day,1,fm.full_moon_date))