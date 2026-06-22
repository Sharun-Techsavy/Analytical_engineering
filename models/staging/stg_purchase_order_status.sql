with source as (

    select * from {{ source('northwind', 'purchase_order_status') }}
    
)

SELECT * FROM source