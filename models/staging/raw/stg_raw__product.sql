with 

source as (

    select * from {{ source('raw', 'product') }}

),

      select
          products_id,
          CAST(purchse_price as FLOAT64) as purchase_price

      from source

)

select * from renamed
