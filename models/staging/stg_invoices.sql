with source as (

    select * from {{ source('northwind', 'invoices') }}
    
)

SELECT * FROM source