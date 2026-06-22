with source as (

    select * from {{ source('northwind', 'employee') }}
    
)

SELECT * FROM source