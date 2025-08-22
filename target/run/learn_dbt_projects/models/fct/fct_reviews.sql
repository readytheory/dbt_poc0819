-- back compat for old kwarg name
  
  begin;
    

        insert into DEV_DEVWIP_DB.A168940.fct_reviews ("LISTING_ID", "REVIEW_DATE", "REVIEWER_NAME", "REVIEW_TEXT", "REVIEW_SENTIMENT")
        (
            select "LISTING_ID", "REVIEW_DATE", "REVIEWER_NAME", "REVIEW_TEXT", "REVIEW_SENTIMENT"
            from DEV_DEVWIP_DB.A168940.fct_reviews__dbt_tmp
        );
    commit;