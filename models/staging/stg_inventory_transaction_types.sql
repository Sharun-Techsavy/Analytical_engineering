with source as (

    select * from {{ source('northwind', 'inventory_transaction_types') }}
    
)

SELECT * FROM source