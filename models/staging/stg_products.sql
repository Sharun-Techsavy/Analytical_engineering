with source as (

    select * from {{ source('northwind', 'products') }}
    
)

SELECT * FROM source