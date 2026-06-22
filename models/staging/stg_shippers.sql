with source as (

    select * from {{ source('northwind', 'shippers') }}
    
)

SELECT * FROM source