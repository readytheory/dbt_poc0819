{% snapshot scd_raw_listings %}
    {{
        config(
            target_schema='raw',
            unique_key='id',
            strategy='check',
            check_cols=['minimum_nights','price'],
            invalidate_hard_deletes=True            
        )
    }}

    select * from {{ source('airbnb', 'listings') }}
 {% endsnapshot %}