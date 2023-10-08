
    
    

with child as (
    select listing_id as from_field
    from airbnb.dev.fct_reviews
    where listing_id is not null
),

parent as (
    select listing_id as to_field
    from airbnb.dev.dim_listings_cleansed
)

select
    from_field

from child
left join parent
    on child.from_field = parent.to_field

where parent.to_field is null


