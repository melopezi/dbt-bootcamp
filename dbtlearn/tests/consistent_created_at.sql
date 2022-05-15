WITH
f AS (
SELECT *
    FROM
        {{ ref('fct_reviews') }}
),
d AS (
SELECT *
    FROM {{ ref('dim_listings_cleansed') }}
)

select *
from f left join d
on f.LISTING_ID = d.LISTING_ID
where f.review_date <= d.created_at