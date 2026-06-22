with source as (

    select * from {{ source('northwind', 'inventory_transactions') }}
    
)

SELECT * FROM source