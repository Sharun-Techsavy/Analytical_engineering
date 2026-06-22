with source as (

    select * from {{ source('northwind', 'sales_reports') }}
    
)

SELECT * FROM source