with source as (

    select * from {{ source('northwind', 'purchase_order_details') }}
    
)

SELECT * FROM source