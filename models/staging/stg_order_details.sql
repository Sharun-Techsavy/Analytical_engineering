with source as (

    select * from {{ source('northwind', 'order_details') }}
    
)

SELECT * FROM source