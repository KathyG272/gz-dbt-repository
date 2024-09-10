

WITH source AS (
    SELECT * 
    FROM {{ source('raw', 'raw_gz_sales') }}
),
renamed AS (
    SELECT
        date_date,
        orders_id,
        pdt_id AS product_id, 
        revenue,
        quantity
    FROM source
)

SELECT * 
FROM renamed
