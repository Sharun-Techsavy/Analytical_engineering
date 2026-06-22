with source as (

    select * from {{ source('northwind', 'orders') }}
    
)

SELECT * FROM source