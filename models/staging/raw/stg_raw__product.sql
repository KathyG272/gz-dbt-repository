with source as (
    select * from {{ source('raw', 'product') }}
),

renamed as (
    select
        product_id,
        CAST(purchase_price as FLOAT64) as purchase_price
    from source
)

select * from renamed

