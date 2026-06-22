with source as (

    select * from {{ source('northwind', 'orders_status') }}
    
)

SELECT * FROM source