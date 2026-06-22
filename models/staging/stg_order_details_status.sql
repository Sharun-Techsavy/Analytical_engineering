with source as (

    select * from {{ source('northwind', 'order_details_status') }}
    
)

SELECT * FROM source