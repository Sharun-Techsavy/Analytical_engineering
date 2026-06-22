with source as (

    select * from {{ source('northwind', 'orders_tax_status') }}
    
)

SELECT * FROM source