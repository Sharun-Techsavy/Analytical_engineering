with source as (

    select * from {{ source('northwind', 'purchase_orders') }}
    
)

SELECT * FROM source