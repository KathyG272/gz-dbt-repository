WITH 

cleaned_data AS (
  
  SELECT
    products_id,
    purchSE_PRICE AS purchase_price, 
    CAST(purchSE_PRICE AS FLOAT64) AS purchase_price 
  
  
  FROM {{ source('raw', 'raw_gz_product') }}
)

SELECT * FROM cleaned_data