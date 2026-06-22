with source as (

    select * from {{ source('northwind', 'orders_tax_status') }}
    
)

SELECT *,current_timestamp() as ingestion_timestamp  FROM source