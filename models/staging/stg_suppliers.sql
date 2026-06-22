with source as (

    select * from {{ source('northwind', 'suppliers') }}
    
)

SELECT * FROM source