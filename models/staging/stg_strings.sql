with source as (

    select * from {{ source('northwind', 'strings') }}
    
)

SELECT * FROM source